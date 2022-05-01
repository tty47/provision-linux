# Provision Linux - Ubuntu with Ansible

## Description
In order to provision your linux, execute the following command:

Like `dotenv` but with ansible.


```Makefile
make all
```

---

## Execute only the playbook
```ansible-playbook
sudo ansible-playbook main.yml --extra-vars "username=<username>"
```

---

## Installation
```bash
sudo apt update; sudo apt install -y make && bash <(curl -s https://raw.githubusercontent.com/jrmanes/provision-linux/master/start.sh)
```

---
Jose Ramón Mañes

---
