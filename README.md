Ansible Role nvm
=========

[![Build Status](https://travis-ci.org/akinobu-tani/ansible-role-nvm.svg?branch=master)](https://travis-ci.org/akinobu-tani/ansible-role-nvm)

Installs nvm.

Requirements
------------

none

Role Variables
--------------

``` yaml
nvm_version: HEAD

node_versions:
  - v6.10.2

nvm_default_version: v6.10.2

nvm_install_path: $HOME/.nvm
nvm_profile_path: $HOME/.bash_profile

npm_packages:
  - yarn
```

Dependencies
------------

none

Example Playbook
----------------

``` yaml
- hosts: servers
  vars:
    node_versions:
      - v6.10.2
    nvm_default_version: v6.10.2
  roles:
     - nvm
```

License
-------

MIT

Author Information
------------------

[Akinobu Tani](http://github.com/akinobu-tani)
