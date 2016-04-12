# Configure VMs in different cloud providers

```
ansible-playbook -i hosts site.yml
```

Uses roles to demonstrate how to perform post install provisioning across both AWS EC2 and MS Azure VMs.

#### Common Role
Configures NTP using Jinja2 template and groups_vars variable
Generic service handler restarts (NTP, Apache, Firewall)

#### Amazon Role
main.yml uses includes to incorporate other playbooks
Adds some user accounts, install Apache/PHP plus dependencies. Restarts firewall after adding HTTP port and configured SELinux

#### Azure Role
main.yml uses includes to incorporate other playbooks
Installs Apache and NTP - packages selected based OS distribution
Creates some user accounts
Also demonstrates tags


