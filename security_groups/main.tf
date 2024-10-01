resource "aws_security_group" "bastion_sg" {
  vpc_id = var.vpc_id
  name   = "BastionSG"
  description = "Allow SSH from specific IP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  tags = {
    Name = "BastionSG"
  }
}

resource "aws_security_group" "app_sg" {
  vpc_id = var.vpc_id
  name   = "AppSG"
  description = "Allow SSH and application port"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  tags = {
    Name = "AppSG"
  }
}
