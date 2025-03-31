# Start Generation Here
resource "aws_instance" "ec2_instance" {

  ami           = var.ami_id # Replace with a valid AMI ID
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [aws_security_group.ec2_sg.name]
  tags = {

    Name = "${var.instance_tag}-${var.environment}"

  }
}

resource "aws_security_group" "ec2_sg" {
  name        = "${var.instance_tag}-${var.environment}-sg"
  description = "${var.instance_tag}-${var.environment}-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH from anywhere
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow HTTP from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
}