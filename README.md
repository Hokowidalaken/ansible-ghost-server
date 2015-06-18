# Ansible Playbook for Ghost

An ansible playbook to build ghost blog

** OS Supported***: Ubuntu
**Important**: This script will update your nodejs to a stable version

### Packages installed
* Nodejs (latest stable)
* Npm
* Wget
* zip
* vim

### Configurations

* Create ghost user (required in ghost tutorials)
* Instalation directory: /var/www/ghost (recommended by ghost tutorials)
* Use forever.sh bash script to start and stop the server

### Bash script to stop/start the server

Instead running with *npm start --production*, a script called forever.sh was created.

**Why a script?**

1. npm doesn't run in background and forever does this (recommended by ghost installation tutorial). 
2. You need to pass environment variables to forever and the command becomes quite long 

**To run ghost**


```bash

$cd /var/www/ghost

$sudo ./forever.sh start

```



**To stop ghost**

```bash

$cd /var/www/ghost

$sudo ./forever.sh stort


```
