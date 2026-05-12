[![Shell](https://img.shields.io/badge/shell-bash%20|%20zsh%20|%20ksh%20-blue.svg)]()
[![Licence](https://img.shields.io/badge/licence-MIT-blue.svg)](https://shields.io/)

# fujy

Juju transport plugin for thefly

Built for [thefly](https://github.com/joknarf/thefly).

## features

The following features are available:

* open your Fly environment inside a Juju unit without a manual ssh setup
* keep your Fly plugins, aliases, and shell environment available inside the unit
* start an interactive shell in the unit with `flyjssh <target>`
* force destination shell using `flyjsshb`, `flyjsshz`, or `flyjsshk`
* use a short alias with `fjssh`
* tab-completion for available Juju units (bash)

## Install

* You can install using [thefly](https://github.com/joknarf/thefly):

```shell
fly add f-atwi/fujy
```

## Usage

Open an interactive Fly shell in a Juju unit:

```shell
flyjssh <application_name>/<unit_number>
```

Target can be any valid `juju ssh` target:

```shell
flyjssh mysql/0          # unit name
flyjssh ubuntu/leader    # leader unit of an application
flyjssh 0                # machine ID
```

Force the destination shell:

```shell
flyjsshb ubuntu/0    # bash
flyjsshz ubuntu/0    # zsh
flyjsshk ubuntu/0    # ksh
```

Short alias:

```shell
fjssh ubuntu/0
```

## Notes

* this plugin expects Fly to already be loaded in the current shell
* this plugin expects `juju` to be installed and a model to be active
* `juju ssh` allocates a pseudo-TTY by default, making the interactive session work correctly
* current support targets bash, zsh, and ksh (if available on the target unit)
* fish is intentionally left for a later step
