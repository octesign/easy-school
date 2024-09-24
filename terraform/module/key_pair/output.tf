output "key_pair_id" {
  value = aws_key_pair.easy_access.id
}

output "key_pair_fingerprint" {
  value = aws_key_pair.easy_access.fingerprint
}

output "key_pair_public_key" {
  value = aws_key_pair.easy_access.public_key
}