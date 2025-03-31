output "instance_ip_addr_private" {
  value = aws_instance.ec2-instance.private_ip
}
output "instance_ip_addr_public" {
  value = aws_instance.ec2-instance.public_ip
}