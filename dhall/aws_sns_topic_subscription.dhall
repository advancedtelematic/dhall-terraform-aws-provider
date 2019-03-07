
let AwsSnsTopicSubscriptionOptional =
  { confirmation_timeout_in_minutes: Optional Natural
  , delivery_policy: Optional Text
  , endpoint_auto_confirms: Optional Bool
  , filter_policy: Optional Text
  , raw_message_delivery: Optional Bool
  }

let AwsSnsTopicSubscriptionRequired =
  { endpoint: Text
  , protocol: Text
  , topic_arn: Text
  }
let AwsSnsTopicSubscription = AwsSnsTopicSubscriptionOptional //\\ AwsSnsTopicSubscriptionRequired

in
{ AwsSnsTopicSubscriptionOptional = AwsSnsTopicSubscriptionOptional
, AwsSnsTopicSubscriptionRequired = AwsSnsTopicSubscriptionRequired
, AwsSnsTopicSubscription = AwsSnsTopicSubscription
}
