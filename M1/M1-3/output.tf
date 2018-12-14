# Output useful information
output "public_ip" {
  value = "${aws_instance.dof-server.*.public_ip}"
}