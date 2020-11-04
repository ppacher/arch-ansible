# arch-ansible

This repository contains a view Ansible playbooks that are meant to provision machines running [Arch Linux](https://archlinux.org). It is intended to manage **my** desktop and server systems and **will not work for you without modification!** (i.e. changing all the included ansible vaults). The playbooks and roles included in this repository have been highly inspired (and partly copied from) [Spark](https://github.com/pigmonkey/spark). Most credits should go there! If you're looking for a more complete personal-machine provisioning thing you should definitely take a look at it.

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
ansible-playboook -i ./hosts <playbook>.yml [-t tags...]
```

You can customize which roles and features should be managed by enabling or disabling roles or tags. Checkout the [`group_vars/`](./group_vars) and [`host_vars/`](./host_vars) directories for configuration examples.

Available playbooks:

| Name             | Description                                                   |
|------------------|---------------------------------------------------------------|
| **syu.yml**      | Upgrade your fleet using `pacman` or `yay`                    |
| **playbook.yml** | Configure an archlinux box with various features and services |

I plan on adding a `install.yml` playbook as well that should include most parts that I'm repeating over and over-again when boostrapping a new arch-linux box. More to come at a later point (repeating this is not too much pain right now).

## License

Personally I don't care; copy it, sell it, do what you want but **don't be evil** (and don't expect me to stand in, fix stuff or help you out if you broke your systems). You should also check the license of [Spark](https://github.com/pigmonkey/spark) as some roles or files are directly copied from there.