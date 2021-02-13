# Provision Linux - Ubuntu with Ansible

In order to provision your linux, execute the following command:

```Makefile
make all
```

Execute only the playbook
```ansible-playbook
sudo ansible-playbook main.yml --extra-vars "username=<username>"
```


---
Jose Ramón Mañes