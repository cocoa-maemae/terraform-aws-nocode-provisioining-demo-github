

# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.


run "attributes_validation" {
  assert {
    condition     = aws_sns_topic.example_topic.name == "example-sns-topic"
    error_message = "incorrect value for aws_sns_topic.example_topic.name"
  }

  assert {
    condition     = aws_sns_topic_subscription.higa_updates_email_target.topic_arn == "arn:aws:sns:ap-southeast-1:861023892450:example-sns-topic"
    error_message = "incorrect value for aws_sns_topic_subscription.higa_updates_email_target.topic_arn"
  }

  assert {
    condition     = aws_sns_topic_subscription.higa_updates_email_target.protocol == "email"
    error_message = "incorrect value for aws_sns_topic_subscription.higa_updates_email_target.protocol"
  }

  assert {
    condition     = aws_sns_topic_subscription.higa_updates_email_target.endpoint == "tomoki.maeda@hashicorp.com"
    error_message = "incorrect value for aws_sns_topic_subscription.higa_updates_email_target.endpoint"
  }

  assert {
    condition     = provider.aws.access_key == "test_access_key"
    error_message = "incorrect value for provider.aws.access_key"
  }

  assert {
    condition     = provider.aws.secret_key == "test_secret_key"
    error_message = "incorrect value for provider.aws.secret_key"
  }

  assert {
    condition     = provider.aws.region == "ap-northeast-1"
    error_message = "incorrect value for provider.aws.region"
  }
}