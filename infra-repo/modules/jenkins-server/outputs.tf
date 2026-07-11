output "instance_id" {
  description = "Jenkins EC2 instance ID"
  value       = aws_instance.jenkins.id
}

output "public_ip" {
  description = "Public IP of Jenkins EC2"
  value       = aws_instance.jenkins.public_ip
}

output "private_ip" {
  description = "Private IP of Jenkins EC2"
  value       = aws_instance.jenkins.private_ip
}

output "public_dns" {
  description = "Public DNS of Jenkins EC2"
  value       = aws_instance.jenkins.public_dns
}
