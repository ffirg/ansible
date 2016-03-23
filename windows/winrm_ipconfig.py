#!/usr/bin/env python

import winrm

s = winrm.Session('192.168.133.104', auth=('vagrant', 'vagrant'))
r = s.run_cmd('ipconfig', ['/all'])
print r.status_code
print r.std_out
print r.std_err
