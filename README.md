# Arch-Bootstrap

This repository contains a view Ansible playbooks that are meant to provision machines running [Arch Linux](https://archlinux.org). It is intended to manage **my** desktop and server systems and **will not work for you without modification!** (i.e. changing all the included ansible vaults). The playbooks and roles included in this repository have highly been inspired (and partly copied from) [Spark](https://github.com/pigmonkey/spark). Most credits should go there! If you're looking for a more complete personal-machine provisioning thing you should definitely take a look at it.

## Preperation

Install ansible and some dependencies:

```
pacman -S python-passlib ansible
```

Next, clone all submodules that are required by this repository:

```
git submodule init && git submodule update
```

You should be ready to use the ansible playbooks now. See below for further instructions.

## Running

To install all the different roles on your inventory run the following:

```
ansible-playboook -i ./hosts playbook.yml [-t tags...]
```

You can customize which roles and features should be managed by enabling or disabling roles or tags. Checkout the [`group_vars/`](./group_vars) and [`host_vars/`](./host_vars) directories for configuration examples.