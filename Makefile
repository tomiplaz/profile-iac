playbook:
	ansible-playbook -i inventory -e "@env.yaml" playbook.yml
