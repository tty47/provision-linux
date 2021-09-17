# Setup computer
user:
	echo $(USER)

all: install_ansible setup

install_ansible:
	sudo apt install -y ansible

setup:
	sudo ansible-playbook main.yml --extra-vars "username=$(USER)"

setup_debug:
	sudo ansible-playbook main.yml --extra-vars "username=$(USER) -vvv"
