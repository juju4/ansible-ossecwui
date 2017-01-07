[![Build Status](https://travis-ci.org/juju4/ansible-ossecwui.svg?branch=master)](https://travis-ci.org/juju4/ansible-ossecwui)
# Ossec WebUI ansible role

A simple ansible role to setup ossec Web UI
https://github.com/ossec/ossec-wui
Please note, it's barely maintained currently

Normally to be installed on OSSEC server system.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0

### Operating systems

Tested with vagrant on Ubuntu 14.04, Kitchen test with trusty and centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - ossecwui
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/ossecwui
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/ossecwui/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues

* default role set up only http server, not https. use harden-webserver role to set it

## License

BSD 2-clause

