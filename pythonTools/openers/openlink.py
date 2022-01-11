#!/usr/bin/env python
'''
This script can be used to open a link stored in a file.
Call this script on a file that simply contains a url.
That url will then be opened in a browser.
NOTE: This script can run on many files/links at once,
        ex: openlink link_a.txt link_b.txt link_c.txt
'''
import os
import sys

for file in sys.argv[1:]:
    if os.path.exists(file):
        with open(file) as f:
            os.system(f'open {f.read()}')

