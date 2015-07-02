# Ansible Playbook for Ghost

An ansible playbook to build ghost blog

**OS Supported**: Ubuntu

**Important**: This script will update your nodejs to a stable version

### How to run the installation

#### In another machine:

Install ansible in your machine and clone this repository.

Edit the inventory file with the host's ips you want to run sinopia on

Run:
```bash
ansible-playbook -i inventory playbook.yml -u <machine-user> -kK
```

#### In vagrant

Install ansible in your machine and clone this repository.

Run:
```bash
vagrant up
```

### Packages installed
* Nodejs (latest stable)
* Npm
* Wget
* zip
* vim

### Configurations

* URL: http://localhost:2368/
* Instalation directory: /var/www/ghost (recommended by ghost tutorials)
* Create ghost user (required in ghost tutorials)
* Instead running with *npm start --production*, a script called forever.sh was created to start and stop ghost.
* Add forever.sh to cron so it can start ghost on every reboot


### Run ghost manually in the server

Start

```bash

$cd /var/www/ghost

$sudo ./forever.sh start

```

Stop

```bash

$cd /var/www/ghost

$sudo ./forever.sh stop

```
