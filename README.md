# profile-iac

My profile website with infrastructure as code.

Run the Ansible playbook with inventory and environment files specified:
```
ansible-playbook -i inventory -e "@env.yaml" playbook.yml
```
