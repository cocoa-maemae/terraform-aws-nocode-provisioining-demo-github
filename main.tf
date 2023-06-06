resource "aws_sns_topic" "example_topic" {
  name = "example-sns-topic"
}

resource "aws_sns_topic_subscription" "example_email_target" {
  topic_arn = aws_sns_topic.example_topic.arn
  protocol  = "email"
  endpoint  = "tomoki.maeda@hashicorp.com"
}

provider "aws" {
  region     = "ap-northeast-1"
}
