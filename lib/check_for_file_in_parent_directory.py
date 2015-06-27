#!/usr/bin/env python

"""
Check for a file in any parent directory of the current directory.

Usage:
    {} <filename>

Searches for <filename>.
"""

import os
import sys

def main():
    if len(sys.argv) != 2:
        print(__doc__)
        sys.exit(1)
    target = sys.argv[1]
    curdir = os.getcwd().split(os.sep)

    while curdir:
        lookin = os.path.join(os.sep, *curdir)
        if target in os.listdir(lookin):
            return True
        curdir.pop()
    return False

if __name__ == '__main__':
    print(main())
