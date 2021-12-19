# install infra
demo:
	bash ./commands/demo.sh

# select all kubernetes resources
kga:
	kubectl get all -A

# detroy kind cluster
td:
	terraform destroy -auto-approve

# install kind, terraform and kubectl 
install:
	bash ./installers/kind_install.sh
	bash ./installers/kubectl_install.sh
	bash ./installers/terraform_install.sh