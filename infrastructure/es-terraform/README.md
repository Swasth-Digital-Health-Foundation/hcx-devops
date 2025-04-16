Spinning Up a Server via Terraform from AWS Bastion Server
Bastion Server IP: 10.0.4.103
Step 1: SSH into the Bastion Server
Connect to the Bastion server using its IP address:
ssh ubuntu@10.0.4.103
Step 2: Verify Git Installation
Check if Git is installed:
git --version
Expected Output if Installed:
git version 2.34.1
If Git is Not Installed:
Install it using:
sudo apt install git -y
Step 3: Verify Terraform Installation
Check if Terraform is installed:
terraform --version
Expected Output if Installed:
Terraform v1.11.3
on linux_amd64
If Terraform is Not Installed:
Follow the official HashiCorp guide to install it:
Install Terraform CLI: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
Step 4: Setup Terraform Configuration
1. Create a Directory for Terraform Files:
mkdir terraform
cd terraform
2. Create Configuration Files:
- Create two files: main.tf and var.tf
- You can find these files in the es-terraform repository.
3. Copy the Configuration:
- Paste the contents of main.tf and var.tf from the repo into the respective files and save them.
Step 5: Initialize and Apply Terraform
Run the following Terraform commands in order:
1. Initialize the project:
terraform init
2. Validate the configuration:
terraform validate
3. Preview the resources to be created:
terraform plan
4. Apply the configuration to create the infrastructure:
terraform apply
- Confirm when prompted.
