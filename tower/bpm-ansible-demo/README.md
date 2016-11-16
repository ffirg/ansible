# This is a cloud VM creation demo for use with Red Hat BPM Suite for end-to-end process automation

```
This is designed to be run from Ansible Tower, and called via a REST job_template launch
```

Spin up VM instances in AWS based on input using a BPM Form, with OS, VM size and app choices

#### Common Role
This will apply common items no matter what the size, OS type. Things like standard config mgt, users etc

#### aws Role
Will spin up VM based on size choice, add applications etc based on OS choice
