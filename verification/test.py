#!/usr/bin/python
from subprocess import call
print("testing python")
cmd=["script","-q","-e","-c","false","/dev/null"]
print("calling",cmd)
code=call(cmd)
print("got code",code)