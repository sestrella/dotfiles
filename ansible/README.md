# Ansible

[![Build Status](https://travis-ci.org/sestrella/ansible.svg?branch=master)](https://travis-ci.org/sestrella/ansible)

## Initial Bootstrap

```
$ ansible-playbook -K playbooks/bootstrap.yml
```

## Installing Packages

```
$ ansible-playbook -K playbooks/packages.yml
```

## Update dotfiles

```
$ ansible-playbooks playbooks/dotfiles.yml
```
