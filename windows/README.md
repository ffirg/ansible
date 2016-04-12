# Ansible Windows Playbooks

Some example playbooks which can be used with ansible core or via tower for Windows hosts.

### Setup

I've used a Windows 2012 Server host in these examples.

#### Facts
windows_facts.eg contains all the facts as discovered by the gather_facts module for a typical Windows host.

#### Inventory hosts file

I use a local hosts file for the Windows hosts and setting generic connection variables to use WinRM.

#### enable_iis.yml
```
ansible-playbook -i hosts enable_iis.yml
```

Install IIS and some sub features. 
By default, a Windows 2012 host comes with such software installed. This configures it for use.

Shows: win_feature module

#### deploy_web_site.yml
```
ansible-playbook -i hosts deploy_web_site.yml
```

After setting up IIS, use this playbook to deploy a new simple web site under wwwroot.

Shows: win_get_url module

#### getmem.yml
```
ansible-playbook -i hosts getmem.yml
```

Rather silly example, as this is discovered by facts, but shows how to run a Powershell script.
To see how much more work it is to code natively in Python see winrm_mem.py :)

Shows: script module, verbose 'debug' output

#### various.yml
```
ansible-playbook -i hosts various.yml
```

Use the raw module to run a Windows command (can be used when there's no core/extra module to do something better) and show the output
Various file checks based on assumptions, add a user account.

Shows: raw, debug, win_stat, assert, win_user modules

#### win-extras.yml
```
ansible-playbook -i hosts win-extras.yml
```

Installs various applications using win_chocolately and a for loop.

Shows: win_chocolately module, for loop.



