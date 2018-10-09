.ONESHELL:

default: plan

##############################
# Terraform
##############################

init:
	cd terraform
	terraform init

destroy:
	cd terraform
	terraform destroy --auto-approve .

plan:
	cd terraform
	terraform plan

provision:
	cd terraform
	terraform apply --auto-approve .
	terraform output

##############################
# Ansible
##############################

configure:
	cd ansible
	TF_STATE=../terraform/terraform.tfstate ansible-playbook "--inventory-file=$(which terraform-inventory)" sites/example.yml

#############################
# Chained
############################

up: init provision configure

down: destroy
