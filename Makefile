.ONESHELL:

default: plan
inventory_file:=$(shell mktemp)

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
	TF_STATE=$(CURDIR)/terraform terraform-inventory --inventory > "$(inventory_file)"
	ansible-playbook --inventory="$(inventory_file)" web.yml

#############################
# Chained
############################

up: init provision configure

down: destroy
