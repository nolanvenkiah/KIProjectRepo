module "dnsModule" {
	source 		= "./modules/dns"
 	access_key 	= "${var.aws_access_key}"
	secret_key 	= "${var.aws_secret_key}"
	region     	= "${var.region}"
	domain_name	= "helloworld.com"
	aRecords	= [
		"helloworld.com ${aws_eip.EIP.public_ip}",
	]
	cnameRecords	= [
		"www.helloworld.com helloworld.com"
	]
}