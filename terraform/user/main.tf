# User 생성
resource "aws_iam_user" "iam_users" {
  for_each = { for user in var.users : user.name => user }

  name = each.key
  tags = local.common_tags
}

# IAM User의 access_key를 가져오기
resource "aws_iam_access_key" "access_keys" {
  for_each = { for user in var.users : user.name => user if user.access_key == true }
  user     = aws_iam_user.iam_users[each.key].name
}

# policy 정의
resource "aws_iam_policy" "ecr_user_policies" {
  for_each = { for user in var.users : user.name => user }
  name     = each.value.policy_name

  policy = jsonencode(each.value.policy)
}

# IAM User에 권한 부여
resource "aws_iam_user_policy_attachment" "ecr_user_policy_attachments" {
  for_each = { for user in var.users : user.name => user }

  policy_arn = aws_iam_policy.ecr_user_policies[each.key].arn
  user       = aws_iam_user.iam_users[each.key].name
}