resource "aws_instance" "bastion" {
  ami                    = var.ami
  instance_type         = var.instance_type
  subnet_id             = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "BastionHost"
  }
}

resource "aws_instance" "app" {
  ami                    = var.ami
  instance_type         = var.instance_type
  subnet_id             = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "ApplicationHost"
  }
}
