resource "aws_sns_topic" "example_topic" {
  name = var.sns_topic_name
}

resource "aws_sns_topic_subscription" "example_email_target" {
  topic_arn = aws_sns_topic.example_topic.arn
  protocol  = "email"
  endpoint  = var.notification_email
}

provider "aws" {
  region     = "ap-northeast-1"
}
