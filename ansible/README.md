# Ansible

## Getting started

```
$ ansible-playbook --ask-sudo-pass playbooks/bootstrap.yml
```

## Common tasks

Install packages:

```
$ ansible-playbook playbooks/packages.yml
```

Install package/version managers:

```
$ ansible-playbook playbooks/managers.yml
```
