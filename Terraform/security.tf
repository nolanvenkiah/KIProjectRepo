/* -------------------------------------------------------
These parameters creates an SSH security group
----------------------------------------------------------*/
resource "aws_security_group" "ssh" {
  name                          = "ssh"
  vpc_id                        = "${aws_vpc.vpc.id}"
ingress {
      from_port                 = 22
      to_port                   = 22
      protocol                  = "tcp"
      cidr_blocks               = ["165.255.76.146/32"]
  }
egress {
    from_port                   = 0
    to_port                     = 0
    protocol                    = "-1"
    cidr_blocks                 = ["0.0.0.0/0"]
  }
tags {
    "Environment"               = "${var.environment_tag}"
  }
}

/* -------------------------------------------------------
These parameters creates an HTTP security group
----------------------------------------------------------*/
resource "aws_security_group" "http" {
  name                          = "http"
  vpc_id                        = "${aws_vpc.vpc.id}"
ingress {
      from_port                 = 80
      to_port                   = 80
      protocol                  = "tcp"
      cidr_blocks               = ["0.0.0.0/0"]
  }
egress {
    from_port                   = 0
    to_port                     = 0
    protocol                    = "-1"
    cidr_blocks                 = ["0.0.0.0/0"]
  }
tags {
    "Environment"               = "${var.environment_tag}"
  }
}