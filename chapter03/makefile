C = gcc
CFLAGS = -g -Wall
LDFLAGS = -lpthread

all: echoserver echoclient race

csapp.o: csapp.c csapp.h
	$(CC) $(CFLAGS) -c csapp.c

echo.o: echo.c csapp.h
	$(CC) $(CFLAGS) -c echo.c

echoclient.o: echoclient.c csapp.h
	$(CC) $(CFLAGS) -c echoclient.c

echoserver.o: echoserver.c csapp.h
	$(CC) $(CFLAGS) -c echoserver.c

race.o: race.c csapp.h
	$(CC) $(CFLAGS) -c race.c

echoserver: csapp.o echo.o echoserver.o
	$(CC) $(CFLAGS) csapp.o echo.o echoserver.o -o echoserver $(LDFLAGS)

echoclient: csapp.o echoclient.o
	$(CC) $(CFLAGS) csapp.o echoclient.o -o echoclient $(LDFLAGS)

race: csapp.o race.o
	$(CC) $(CFLAGS) csapp.o race.o -o race $(LDFLAGS)

clean:
	rm -f *~ *.o echoserver echoclient race core *.tar *.zip *.gzip *.bzip *.gz