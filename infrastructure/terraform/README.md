## Create infrastructure using terraform

1. Download terraform binary
2. Update proper values in params/terraform.tfvars
3. update the  PostgreSQL password in both terraform.tfvars and vars.tf files.  
follow below steps

``` 
Step 1: Install terrahelp (assuming you haven't installed it yet)
# Instructions to install terrahelp may vary based on your operating system or package manager.

Step 2: Retrieve the Encryption Key from terraformsecret
h access to the devops-dev repository and the terraformsecret file copy the encryption_key from there

Step 3: Decrypt the Password
 Use the retrieved encryption key to decrypt the password in the terraform.tfvars file.

 Example command to decrypt the password:
   1. export terahelp_sample_key="(please replace with the key copied from private repo in the devops-dev repo filename terraformsecret)"
    terrahelp decrypt -mode=inline -simple-key="${terahelp_sample_key}" -file=terraform.tfvars
   2. terrahelp decrypt -mode=inline -simple-key=${terahelp_sample_key} -file=terraform.tfvars
   2. terrahelp decrypt -mode=inline -simple-key=${terahelp_sample_key} -file=terraform.tfvars

4. `tf init`
5. `tf apply -var-file ./params/terraform.tfvars`



