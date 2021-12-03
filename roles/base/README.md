# `base` role

This roles provides most of the general-system configuration that I'd expect all my systems to have.
In paticular, the `base` role configures the following things:

- Hostname, Kernel-parameters (if using grub), pacman: [main.yml](./tasks/main.yml)
- System locale [locale.yml](./tasks/locale.yml)
- Date/Time using systemd-timesyncd: [datetime.yml](./tasks/datetime.yml)
- Shell installation: [shell.yml](./tasks/shell.yml)
- sudo configuration: [sudo.yml](./tasks/sudo.yml)
- AUR build user and yay [aur_build_user.yml](./tasks/aur_build_user.yml) 
- Pacman cache cleanup, general packages: [packages.yml](./tasks/packages.yml)
- All users with SSH keys, GPG-agent, logrotate, ...: [users.yml](./tasks/users.yml) and [single-user.yml](./tasks/single-user.yml)


 