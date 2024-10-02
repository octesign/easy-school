output "public_ip_address" {
  value = aws_instance.easy-sec.public_ip
}
output "private_ip_address" {
  value = aws_instance.easy-sec.private_ip
}