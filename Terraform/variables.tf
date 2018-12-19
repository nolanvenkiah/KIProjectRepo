/* -------------------------------------------------------
These variables pertain the AWS Subscription
----------------------------------------------------------*/
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {}

/*-------------------------------------------------------
These variables pertain to the default VPC and network
--------------------------------------------------------*/
variable "environment_tag" {}
variable "subnet1_cidr_block_range" {}
variable "cidr_block_range" {}
variable "availability_zone" {}

/*-------------------------------------------------------
These variables pertain to the EC2 instance
--------------------------------------------------------*/
variable "instance_ami" {}
variable "instance_type" {}
variable "key_pair_name" {}
