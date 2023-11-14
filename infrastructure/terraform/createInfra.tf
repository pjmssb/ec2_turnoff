provider "aws" {
  region = "us-west-2"
}

resource "aws_iam_role" "lambda_execution_role" {
  name = "lambda_execution_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "lambda.amazonaws.com"
      },
    }]
  })

  tags = {
    system = "ec2_shutdown"
  }
}

resource "aws_lambda_function" "ec2_shutterdown" {
  function_name = "ec2_shutterdown"

  # The following attributes will depend on the actual deployment package and runtime
  # Replace "filename-of-deployment-package.zip" with the actual filename of the Lambda deployment package
  # Replace "handler-name" with the actual handler name for the Lambda function
  filename         = "filename-of-deployment-package.zip"
  handler          = "handler-name"
  runtime          = "python3.8"
  role             = aws_iam_role.lambda_execution_role.arn

  tags = {
    system = "ec2_shutdown"
  }
}

resource "aws_cloudwatch_event_rule" "ec2_shutdown_timer" {
  name                = "ec2_shutdown_timer"
  schedule_expression = "cron(30 21 * * ? *)"  # 18:30 GMT-3 in UTC time

  tags = {
    system = "ec2_shutdown"
  }
}

resource "aws_cloudwatch_event_target" "ec2_shutdown_timer_target" {
  rule      = aws_cloudwatch_event_rule.ec2_shutdown_timer.name
  target_id = "TargetFunction"
  arn       = aws_lambda_function.ec2_shutterdown.arn
}

resource "aws_lambda_permission" "allow_cloudwatch_to_call_shutterdown" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.ec2_shutterdown.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.ec2_shutdown_timer.arn
}

resource "aws_s3_bucket" "ec2_shutdown_logs" {
  bucket = "ec2_shutdown_logs"
  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "log_deletion_rule"
    enabled = true

    expiration {
      days = 90
    }
  }

  tags = {
    system = "ec2_shutdown"
  }
}

resource "aws_s3_bucket" "ec2_shutdown_terraform" {
  bucket = "ec2_shutdown_terraform"
  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    system = "ec2_shutdown"
  }
}
