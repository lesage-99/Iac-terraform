# terraform-aws-web-app

## Description

Builds a highly available AWS infrastructure from Terraform for a php web application communicating with a database.

![schema!](images/infrastructure-schema.jpg)


## modules 

`vpc`: Creates VPC with two public subnets for your ELB and two private subnets for your EC2 instances and your RDS service on different AZs

`alb-sg` : Creates an Auto Scaling group with ELB of type "application"

`s3` : Creates an S3 bucket on which the sources of your application will be put

`ec2_role_allow_s3` : Creates an instance profile using an iam role authorizing access to S3 from your EC2 instances

`rds` :Creates a mariadb relational database used for our EC2 web instances
