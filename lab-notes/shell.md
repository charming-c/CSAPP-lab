# shell lab 笔记解析
这次实验是写一个小的 linux shell，实验中将大部分的终端处理和作业管理函数已经处理好了，我们只需要将 eval、builtin_cmd、do_bgfg、sigchld_handler、sigint_handler、sigstp_handler 填完就好了。
## eval 函数
函数功能：执行用户输入的终端命令
```c
void eval(char *cmdline)
{
    char *argv[MAXARGS];
    char buf[MAXLINE];
    int bg;
    pid_t pid;
    sigset_t mask_all, mask_one, prev_all;

    strcpy(buf, cmdline);

    // 判断是否是前台任务，并且将 命令行 中的各个参数保存到 argv 中
    bg = parseline(buf, argv);
    if (argv[0] == NULL)
        return;

    // 不是内置命令
    if (!builtin_cmd(argv))
    {
        /**
         * @brief 在这里简单解释一下如何阻塞信号比较好
         * 子进程 - 会在前台或者后台运行
         * 父进程 - 在创建完进程以后，还要将进程加入作业列表
         *         挂起等待前台进程。
         *         在收到 SIGCHLD 信号后要删除作业
         *         在收到 SIGINT 信号终止前台作业
         *         在收到 SIGSTP 信号停止进程的执行
         *         在收到 SIGCONT 信号继续停止的进程
         * 
         * 为了防止父进程在加入作业列表之前就把作业删除，那么在创建子线程之前，就要阻塞 SIGCHLD 信号，
         * 为了使得父进程创建子进程以后可以先把作业加入列表，暂时阻塞所有信号
         * 添加作业列表以后再恢复阻塞信号。
         */


        // 在加载子进程程序之前要阻塞 SIGCHLD 信号，防止父进程加入作业和信号处理程序的删除作业产生竞争
        sigfillset(&mask_all);
        sigemptyset(&mask_one);
        sigaddset(&mask_one, SIGCHLD);// mask装配

        // 阻塞 SIG_CHLD 信号
        sigprocmask(SIG_BLOCK, &mask_one, &prev_all);
        if ((pid = Fork()) == 0)
        {
            // 子进程内
            // 在子进程中先设置一个进程组，shell 主进程才是前台进程，在键盘发送 SIG_INT 或者 SIG_STP信号，
            // 发送的是前台进程组，而不是后台或者前台作业，
            // 为了方便之后的进程间的信号传递，则将每个子进程都创建一个新的进程组
            setpgid(0, 0);
            // 子进程解除 SIGCHLD 信号阻塞，解除父进程上下文
            sigprocmask(SIG_SETMASK, &prev_all, NULL);
            // 加载程序
            if (execve(argv[0], argv, environ) < 0)
            {
                printf("%s: Command not found.\n", argv[0]);
                exit(0);
            }
            // 加载完毕后，退出子进程
            exit(0);
        }

        sigprocmask(SIG_BLOCK, &mask_all, NULL); // 阻塞所有信号

         // 前台作业
        if (!bg)
            addjob(jobs, pid, FG, cmdline);
        // 后台作业
        if(bg) addjob(jobs, pid, BG, cmdline);

        sigprocmask(SIG_SETMASK, &mask_one, NULL);

        // 父进程操作
        if (bg)
        {
            // 前台打印最近执行的后台作业
            struct job_t *job = getjobpid(jobs, pid);
            printjobmsg(job);
        }
        else
        {
            // 获取最近的前台作业的 pid
            waitfg(pid);
        }
        sigprocmask(SIG_SETMASK, &prev_all, NULL);
    }
    return;
}
void printjobmsg(struct job_t *job)
{
    if (job->pid != 0)
    {
        printf("[%d] (%d) ", job->jid, job->pid);
        printf("%s", job->cmdline);
    }
    return;
}
```
## builtin_cmd 函数
函数功能：判断 shell 输入的是否是内置命令，如果是的话就直接执行相关的操作
```c
int builtin_cmd(char **argv)
{
    // quit 命令：直接退出父进程
    if (!strcmp(argv[0], "quit"))
    {
        exit(0);
    }
    // 如果前置命令是 fg 或者 bg 直接跳转到相关函数进行操作
    if (!strcmp(argv[0], "fg") || !strcmp(argv[0], "bg"))
    {
        do_bgfg(argv);
        return 1;
    }
    // jobs 则列出所有的作业
    if (!strcmp(argv[0], "jobs"))
    {
        listjobs(jobs);
        return 1;
    }
    // 如果单单输入 &，则不做任何操作
    if (!strcmp(argv[0], "&"))
    {
        return 1;
    }
    // 如果不是内置命令，则返回 0
    return 0; 
}
```
## waitfg 函数
函数功能：此函数会挂起 shell 主进程，直到前台进程执行完毕才会开始继续执行 主进程
```c
void waitfg(pid_t pid)
{  
    sigset_t mask, prev;
    sigemptyset(&mask);   
    // 利用内置的函数 fgpid 获取前台进程，如果没有前台进程就会返回 0
    // 有的话，就暂时解除 shell 主进程阻塞的所有信号
    // 注意此函数在 eval 中调用时，shell 进程已经阻塞了 SIG_CHLD 信号，
    // 而在等待子进程（前台作业）时，我们必须在收到 SIG_CHLD 信号或者 SIG_INT 信号后
    // 将作业回收处理，所以在这里解除阻塞的所有信号
    while (fgpid(jobs) != 0){
        sigprocmask(SIG_SETMASK, &mask, &prev);
        sleep(1);
        sigprocmask(SIG_SETMASK, &prev, NULL);
    }
    // 同时实验手册里建议我们在这里使用 sleep 函数
}
```
## sigint_handler 信号处理函数
函数功能：在发送信号以后，shell 进程就会收到 SIG_INT信号，在这里我们要结束前台进程组的所有进程
我们可以先获得前台进程组的 pid， 然后发送给作业和作业的所有子进程，同时要意识到，这里的作业终止后，内核还会向 shell 进程，即其父进程发送一个 SIG_CHLD 信号，我们可以在那里进行 shell 进程要做的一些反应
```c
void sigint_handler(int sig)
{
    int olderrno = errno;
    int pid;
    sigset_t mask_all, prev;
    // 要保证信号处理的健壮性，所以在这里我们先阻塞所有信号，
    // 防止被其他信号处理函数中断
    sigfillset(&mask_all);
    sigprocmask(SIG_BLOCK, &mask_all, &prev);
    if((pid = fgpid(jobs)) != 0){
        sigprocmask(SIG_SETMASK, &prev, NULL);
        // 向整个进程组发送一个 SIG_INT 信号
        kill(-pid, SIGINT);
    }
    errno = olderrno;
    return;
}
```
## sigtstp_handler 信号处理函数
函数功能：在发送信号以后，shell 进程会收到一个 SIG_STP信号，我们应该要停止前台作业
同 sigint_handler 信号处理函数一样，获取前台进程组 pid 以后，停止其执行，然后在 shell 进程那里处理内核发送的 SIG_CHLD 信号做一些反应。
```c
void sigtstp_handler(int sig)
{
    int olderrno = errno;
    int pid;
    sigset_t mask_all, prev;
    sigfillset(&mask_all);
    sigprocmask(SIG_BLOCK, &mask_all, &prev);
    if((pid = fgpid(jobs)) > 0){
        sigprocmask(SIG_SETMASK, &prev, NULL);
        kill(-pid, SIGTSTP);
    }
    errno = olderrno;
    return;
}
```
## sigchld_handler 信号处理函数
函数功能：每当有作业终止或停止，shell 进程都要接收到此信号，并且做出反应，并且由于阻塞的作用，我们还要尽可能多的去回收一些没来得及反应的信号
我们在这里也要阻塞其他的信号的中断，然后在子进程自然终止时回收他们，删除作业，然后在为收到其他信号而终止或者停止时做出一些相应的反应。
```c
void sigchld_handler(int sig)
{
    int olderrno = errno;
    sigset_t mask_all, prev_all;
    int status;
    pid_t pid;
    struct job_t *job;
    sigfillset(&mask_all);

    // 每接收一个 SIG_CHLD 信号我们都要回收尽可能多的子进程
    // 如果没有要回收的进程则直接返回
    // 检查已终止或被停止的进程
    while ((pid = waitpid(-1, &status, WUNTRACED | WNOHANG)) > 0)
    {
        // 回收掉已终止的进程后，或者有进程停止后此时应该阻塞信号进行一些主进程中相关的操作
        sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
        // 正常终止
        if(WIFEXITED(status)) {
            deletejob(jobs, pid);
        }
        // 被信号终止
        else if(WIFSIGNALED(status)) {
            printf("Job [%d] (%d) terminated by signal %d\n", pid2jid(pid), pid, WTERMSIG(status));
            deletejob(jobs, pid);
        }
        // 进程被信号停止
        else if (WIFSTOPPED(status)){          
            printf ("Job [%d] (%d) stopped by signal %d\n", pid2jid(pid), pid, WSTOPSIG(status));
            job = getjobpid(jobs, pid);
            job->state = ST;
        }
        
        sigprocmask(SIG_SETMASK, &prev_all, NULL);
    }
    errno = olderrno;
    return;
```
## do_bgfg 函数
函数功能：调度前后台作业，并且支持作业或者进程号调度
这个函数就是要识别进程号、作业号，并且进行相关错误处理
```c
struct job_t *job = NULL;        //要处理的job
    int state;                      //输入的命令
    int id;                         //存储jid或pid
    if(!strcmp(argv[0], "bg")) state = BG;
        else state = FG;  
    if(argv[1]==NULL){               //没带参数
        printf("%s command requires PID or %%jobid argument\n", argv[0]);
        return;
    }
    if(argv[1][0]=='%'){             //说明是jid
       if(sscanf(&argv[1][1], "%d", &id) > 0){
            job = getjobjid(jobs, id);  //获得job
            if(job==NULL){
                printf("%%%d: No such job\n", id);
                return;
            }
        }
    }
    else if(!isdigit(argv[1][0])) {  //其它符号，非法输入
        printf("%s: argument must be a PID or %%jobid\n", argv[0]);
        return;
    }
    else{                       //pid
        id = atoi(argv[1]);
        job = getjobpid(jobs, id);
        if(job==NULL){
            printf("(%d): No such process\n", id);
            return;
        }

    }
    kill(-(job->pid), SIGCONT);       //重启进程, 这里发送到进程组
    job->state = state;
    if(state==BG)
        printf("[%d] (%d) %s",job->jid, job->pid, job->cmdline);
    else 
        waitfg(job->pid);
    return;
}
```
