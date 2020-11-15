# arch-ansible

This repository contains a collection of ansible roles to manage and provision **my** [Archlinux](https://archlinux.org) based desktop, server, router and embedded (mostly RPi) systems.

The roles distributed in this collection have been highly inspired (and partly copied) from [Spark](https://github.com/pigmonkey/spark). If you're looking for a more complete personal-machine provisioning thingy you should definitely take a look there.

## Usage

Although the repository can be used directly it is meant to be used as an ansible collection. Please note that since this repository is designed to be used by the author it will not get published on ansible galaxy. If you have any questions or find bugs please feel free to file an issue but be prepared to fix it yourself as I might not have time to care (though, I will respond to any issues created!).

To use it as a collection in your playbooks, make sure to have something like the following in your local `ansible.cfg`:

```
[defaults]
collections_paths = ./
```

Finnally, create the required folder structure and clone the collection:

```
mkdir ansible_collections/tkd
git clone https://github.com/ppacher/arch-ansible ./ansible_collections/tkd/common
```

You can now refer to any roles defined here by using it's FQCN. That name depends on the folder structure and, in the example above, may look like `tkd.common.mirrorlist`.

