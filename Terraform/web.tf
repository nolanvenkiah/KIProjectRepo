/* -------------------------------------------------------
These parameters creates an EC2 instance
----------------------------------------------------------*/
resource "aws_instance" "instance" {
  ami                       = "${var.instance_ami}"
  instance_type             = "${var.instance_type}"
  subnet_id                 = "${aws_subnet.subnet_public.id}"
  vpc_security_group_ids    = ["${var.security_group_ids}"]
  key_name                  = "${var.key_pair_name}"
  tags {
    "Environment"           = "${var.environment_tag}"
  }
}

/* ----------------------------------------------------------
These parameters creates a Elastic IP address for an instance
------------------------------------------------------------*/
resource "aws_eip" "EIP" {
  vpc                       = true
  instance                  = "${aws_instance.instance.id}"
  tags {
    "Environment"           = "${var.environment_tag}"
  }
}