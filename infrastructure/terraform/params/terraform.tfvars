env = "experiment"

AWS_REGION = "ap-south-1"
AWS_PROFILE = "hcx-dev"
instance_type = "t3.medium"

ami = "ami-0287a05f0ef0e9d9a"

ec2 = {
    "experiment-es" = "t3.medium",
  }

vpc_cidr = "10.0.0.0/16"

private_subnet = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ]

public_subnet = [ "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24" ]
database_subnet = [ "10.0.7.0/24", "10.0.8.0/24", "10.0.9.0/24" ]
postgres_password = "SuperSecurePassword"

