# Ansible Collections

There are different ways to interact with Ansible Collections and your Ansible Automation:

  - Install into your runtime environment or virtual env
  - Provide as part of your SCM tree
  - Using a requirements file (this example)

Quick example of how to install Ansible Collections using a requirements.yml file

## Installation

You need to setup credentials and set in your ansible.cfg file in order to pull download content. This [blog](https://www.ansible.com/blog/hands-on-with-ansible-collections) described it beautifully :)

First install, just do it:
```
ansible-galaxy collection install -r ansible/collections/requirements.yml
```

Force install (latest version) and show me more:
```
ansible-galaxy collection install -r ansible/collections/requirements.yml --force -v
```

## Output

Sample when used with --force -v:

```
Using /Users/pgriffit/ansible.cfg as config file
Process install dependency map
Starting collection install process
Installing 'junipernetworks.junos:0.0.2' to '/Users/pgriffit/collections/ansible_collections/junipernetworks/junos'
Installing 'servicenow.servicenow:1.0.1' to '/Users/pgriffit/collections/ansible_collections/servicenow/servicenow'
Installing 'f5networks.f5_modules:1.1.0' to '/Users/pgriffit/collections/ansible_collections/f5networks/f5_modules'
Skipping 'ansible.netcommon' as it is already installed
```

## Usage

Refer to this [example](../snow_collection_example.yml), to see how to call and use a collection with a simple playbook
