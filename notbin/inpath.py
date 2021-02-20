#!/usr/bin/env python3
import os
import sys
arg=(sys.argv+[''])[1]
if arg and arg in os.environ['PATH'].split(':'):
    exit(0)
else:
    exit(1)
