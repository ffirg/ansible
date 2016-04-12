# ansible

Some example playbooks which can be used with ansible core or via tower

### Setup

git clone this repo: 
```
cd 
git clone https://github.com/ffirg/ansible.git
cd ansible
```

### Inventory hosts file

I use a local hosts file to showcase how you can logically split hosts into [geographical] groups, and then from parent groups from other groups. I also set some group variables at this level to show how it can be done - used in the post-provision.yml for example.

### first-checks.yml 
```
ansible-playbook -i hosts first-checks.yml
```

For a particular host, try it ping it, get the default IP gateway if set, set the hostname, configure and restart firewalld

Shows: ping, hostname firewall modules
Shows: tags
Shows: notify handler to restart firewalld




