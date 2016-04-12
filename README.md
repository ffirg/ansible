# ansible

Some example playbooks which can be used with ansible core or via tower

### Setup

git clone this repo: 
```
cd 
git clone https://github.com/ffirg/ansible.git
cd ansible
```

### Facts
facts.all contains all the facts as dicovered by gather_facts for a typical Linux host

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

#### post-provision.yml 
```
ansible-playbook -i hosts post-provision.yml
```

For one set of hosts, install wget and add some users. Run a local command (say on Mac OS X) after using vars from hosts file
For another set of hosts, update MOTD and add some users. Run a local command (say on Mac OS X) after using vars from hosts file
Note: MOTD will fail. This is deliberate to show how Ansible handles failures (colour coding etc).
Re-run the playbook after creating /tmp/foo to fix the problem.

Shows: yum, user account, copy, local_action modules, tagging

To show how tagging works:
```
ansible-playbook -i hosts post-provision.yml --tags "users, packages"
ansible-playbook -i hosts post-provision.yml --skip-tags "notify"
```
