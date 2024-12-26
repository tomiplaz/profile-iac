main:
	ansible-playbook -i inventory.yml -e "@env.yml" playbooks/main.yml

le:
	ansible-playbook -i inventory.yml -e "@env.yml" playbooks/letsencrypt.yml
