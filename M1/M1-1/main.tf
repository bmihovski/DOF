provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "eu-central-1"
}

resource "aws_instance" "M1-1" {
  ami           = "ami-0bdf93799014acdc4"
  instance_type = "t2.micro"
  key_name      = "terraform-key"
}

output "Public IP" {
  value = "${aws_instance.M1-1.public_ip}"
}

output "Public DNS" {
  value = "${aws_instance.M1-1.public_dns}"
}
