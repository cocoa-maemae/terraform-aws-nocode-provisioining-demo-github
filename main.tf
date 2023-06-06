resource "aws_sns_topic" "example_topic" {
  name = "example-sns-topic"
}

resource "aws_sns_topic_subscription" "higa_updates_email_target" {
  topic_arn = "arn:aws:sns:ap-southeast-1:861023892450:example-sns-topic"
  protocol  = "email"
  endpoint  = "tomoki.maeda@hashicorp.com"
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "ap-northeast-1"
}
