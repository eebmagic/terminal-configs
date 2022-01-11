#!/usr/bin/env python3
'''
When inside a git repo, this script can be called to open
links to a remote that is listed for the repo.
(Defaults to the first remote if there are multiple)
'''
import os

remote = os.popen('git remote show').read()
if not remote:
    quit()

response = os.popen(f'git remote show {remote}').read()

for line in response.split('\n'):
    if 'http' in line or '.com' in line:
        link = line.split(' ')[-1].strip()
        if link.startswith('http'):
            command = f'open {link}'
            print(f'opening link:\n\t{link}')
            os.system(command)
            quit()
        elif 'git@' in link:
            link = link.replace(':', '/')
            link = link.replace('git@', 'http://')
            command = f'open {link}'
            print(f'opening link:\n\t{link}')
            os.system(command)
            quit()
