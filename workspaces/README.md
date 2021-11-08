Use the same configuration file (main.tf) to create resources in multiple environments

Create a main.tf with an aws resource type ec2_instance

Use locals block to define the instance name using terraform.workspace

Create environments prod and dev

terraform workspace new dev 

terraform workspace new prod

terraform workspace select dev

create dev.tfvars and prod.tfvars

define appropriate values in both of these files 

terraform apply -var-file dev.tfvars -auto-approve


