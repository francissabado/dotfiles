# -*- python -*-
from __future__ import print_function
from subprocess import PIPE, Popen
import os, sys 


def module(command, *arguments):
    proc = Popen(['/ascldap/users/fsabado/lmod/lmod/libexec/lmod', 'python', command] + list(arguments), stdout=PIPE, stderr=PIPE)
    stdout, stderr = proc.communicate()
    err_out=sys.stderr
    if (os.environ.get('LMOD_REDIRECT','no') != 'no'):
        err_out=sys.stdout

    print(stderr.decode(),file=err_out)
    exec(stdout.decode())
