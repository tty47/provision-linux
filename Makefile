# Setup computer
.PHONY: user clear all install_ansible setup setup_debug

user:
	echo $(USER)

clear:
	clear

all: clear install_ansible setup

install_ansible:
	sudo apt install -y ansible make

setup:
	sudo ansible-playbook main.yml --extra-vars "username=$(USER)"

setup_debug:
	sudo ansible-playbook main.yml --extra-vars "username=$(USER) -vvv"
