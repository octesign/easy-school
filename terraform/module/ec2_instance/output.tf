output "easy_sec_ip" {
  description = "Public Ips of the instances in public subnet 1"
  value = aws_instance.easy-sec.public_ip
}
output "easy_sec_id" {
  description = "Instance Id of the instance in public subnet 1"
  value = aws_instance.easy-sec.id
}

output "easy_pub_ip" {
  description = "Public Ips of the instances in the public subnet 2"
  value = aws_instance.easy-pub.public_ip
}
output "easy_pub_id" {
  description = "Instance Id of the instance in public subnet 2"
  value = aws_instance.easy-pub.id
}

output "easy_prim" {
  description = "Public Ips of the instances in the private subnet 1"
  value = aws_instance.easy-prim.public_ip
}
output "easy_prim_id" {
  description = "Instance Id of the instance in private subnet 1"
  value = aws_instance.easy-prim.id
}

output "easy_back_ip" {
  description = "Public ips of the instances in the private subnet 2"
  value = aws_instance.easy-back.public_ip
}