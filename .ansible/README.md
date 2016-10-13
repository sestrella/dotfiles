# Playbooks

My ansible playbooks.

## Getting started

Run bootstrap playbook:

```
$ ansible-playbook --ask-sudo-pass playbooks/bootstrap.yml
```

## Common tasks

Install packages:

```
$ ansible-playbook --ask-sudo-pass playbooks/packages.yml
```

Install package/version managers:

```
$ ansible-playbook playbooks/managers.yml
```
