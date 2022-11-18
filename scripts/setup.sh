function setup {
#!/bin/bash
#export $(cat .env)
terraform init
terraform fmt
terraform validate
terraform plan
# apply
echo "running: $PWD"
read -p "Press enter to continue"
terraform apply --auto-approve
}
