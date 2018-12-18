/* -------------------------------------------------------
These parameters specify the AWS subscription being used
----------------------------------------------------------*/
provider "aws" {
  access_key                = "${var.access_key}"
  secret_key                = "${var.secret_key}"
  region                    = "${var.region}"
}

/* -------------------------------------------------------
These parameters creates an AWS resource group
----------------------------------------------------------*/
resource "default_vpc" "default" {
    tags                    = {
        Name                = "var.vpc_tag_name"
    }
    
}