data "aws_iam_policy_document" "policy" {
  statement {
    effect = "Deny"

    principals {
      type = "AWS"

      identifiers = [
        "*",
      ]
    }

    actions = [
      "s3:PutObjectAcl",
    ]

    resources = aws_s3_bucket.bucket.*.arn
  }
}

