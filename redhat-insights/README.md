# Red Hat Network Playbooks

Some examples on how to register hosts on the RHN network and for Red Hat Insights, the proactive support service.

### Registering on RHN

```
ansible-playbook -i hosts rhnreg.yml
```

A crude but effective way of registering your hosts on the RHN network.
Demonstrates how to do interactive stuff with prompt: 
Simply copies over the rhsm.sh script (does a subscription-manager check) and runs it on the host

### Registering for Red Hat Insights

This introduces the community driven Ansible Galaxy!

```
ansible-galaxy install danvarga.redhat-access-insights-client
vi /etc/ansible/roles/danvarga.redhat-access-insights-client/templates/insights-client.conf.j2
```

Edit the username= and password= parameters, and proxy= if necessary.
[You would ideally want to 'ansible-vault' this file after to encrypt sensitive details]

```
ansible-playbook -i hosts redhat-insights.yml
```

The role /etc/ansible/roles/danvarga.redhat-access-insights-client/tasks/main.yml installs the insights package, copies over the configuration file, and registers the host with the Insights Service only if it's not been registered already.


