resource "aws_iam_user" "practice" {
    name = "practice"
  
}

resource "aws_iam_policy" "s3policy" {
    name = "s3policy"
    description = "attaching ploicy to the user"

    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Effect = "Allow",
                Action = "s3:*",
                Resource = "*"
            }
        ]
    })
  
}

resource "aws_iam_user_policy_attachment" "attaching" {
    user = aws_iam_user.practice.name
    policy_arn = aws_iam_policy.s3policy.arn
      
}