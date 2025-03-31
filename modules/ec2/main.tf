resource "aws_instance" "ec2-instance" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.ec2_security_group_ids
  subnet_id = var.subnet_id
}
resource "aws_eip" "ec2-instance-eip" {
  instance = aws_instance.ec2-instance.id
}