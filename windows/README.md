# Ansible Windows Playbooks

Some example playbooks which can be used with ansible core or via tower for Windows hosts.

### Setup

I've used a Windows 2012 Server host in these examples.

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
