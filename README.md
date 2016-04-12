# ansible

Some example playbooks which can be used with ansible core or via tower

### Setup

git clone this repo: 
```
cd 
git clone https://github.com/ffirg/ansible.git
cd ansible
```

#### Inventory hosts file

I use a local hosts file to showcase how you can logically split hosts into [geographical] groups, and then from parent groups from other groups. I also set some group variables at this level - used in the post-provision.yml for example.

#### first-checks.yml 
```
ansible-playbook -i hosts first-checks.yml
```

For a particular host, try it ping it, get the default IP gateway if set, set the hostname, configure and restart firewalld

Shows: ping, hostname firewall modules, tagging, event notify handler

#### blocks-eg.yml 
```
ansible-playbook -i hosts blocks-eg.yml
```

An example of how to use the Ansible 2.x blocks feature.
Sets conditions around a code block (distribution= RedHat) and how to do generic error handling within it (rescue/always)

Shows: ping, command, local_action modules, blocks with error handling




