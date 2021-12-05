## librespot

This role installs [librespot](https://github.com/librespot-org/librespot) from the Arch User Repository, prepares a systemd service template at `/etc/systemd/user/librespot@.service` and enables the user service for the user specified in `librespot_user`.

### Customization

This role does not support lot's of customization on it's own. Instead, the systemd user unit can be configured using an `EnvironmentFile` at `/etc/librespot/{{ librespot_name }}` or at `~/.config/librespot/{{ librespot_name }}`. 
Check the [librespot@.service file](./files/librespot@.service) for more information about the available environment variables and the used defaults.

### Options

#### `librespot_user`

Default: unset  

Set to the name of the user for which the librespot systemd user unit should be enabled. 

#### `librespot_name`

Default: `librespot`  

The librespot instance name as it will be advertised on the local network. Defaults to `librespot` and is only used when `librespot_user` is set.

