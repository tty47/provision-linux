# Setup computer
.PHONY: user clear all install_ansible setup setup_debug
user:
	echo $(USER)
clear:
	clear
install_ansible:
	sudo apt install -y ansible
setup:
	sudo ansible-playbook main.yml --extra-vars "username=$(USER)"
setup_debug:
	sudo ansible-playbook main.yml --extra-vars "username=$(USER) -vvv"
all: install_ansible setup
