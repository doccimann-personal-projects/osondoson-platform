output "iam_user_access_keys" {
  value = {
    for user in var.users :
    user.name => {
      access_key = aws_iam_access_key.access_keys[user.name].id
      secret_key = aws_iam_access_key.access_keys[user.name].secret
    } if user.access_key == true
  }
  sensitive = true
}