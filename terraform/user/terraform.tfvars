users = [
  {
    name        = "osondoson-ecr-upload-user"
    policy_name = "osondoson-ecr-upload-policy"
    policy = {
      Version = "2012-10-17"
      Statement = [
        {
          Effect = "Allow"
          Action = [
            "ecr:DescribeRepositories",
            "ecr:GetAuthorizationToken",
            "ecr:BatchGetImage",
            "ecr:BatchCheckLayerAvailability",
            "ecr:PutImage",
            "ecr:InitiateLayerUpload",
            "ecr:UploadLayerPart",
            "ecr:CompleteLayerUpload"
          ]
          Resource = "*"
        }
      ]
    }
    access_key = true
    secret_key = true
  }
]