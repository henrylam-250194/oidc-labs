output "instance_id" {
  value = aws_instance.ec2_instance.id
}

output "key_name" {
  value = aws_instance.ec2_instance.key_name
}

output "security_group" {
  value = aws_security_group.ec2_sg.name
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

output "private_ip" {
  value = aws_instance.ec2_instance.private_ip
}
