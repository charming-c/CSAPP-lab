import frida
import sys

session = frida.attach("hello")
# script = session.create_script("""
# Interceptor.attach(ptr("%s"), {
#     onEnter(args) {
#         args[0] = ptr("1337");
#     }
# });
# """ % int(sys.argv[1], 16))

script = session.create_script("send(a)")

def on_message(message, data):
    print(message)
script.on('message', on_message)
script.load()
sys.stdin.read()