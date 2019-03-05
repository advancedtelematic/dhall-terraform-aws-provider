
let AwsCloudwatchLogSubscriptionFilterOptional =
  { distribution: Optional Text
  , role_arn: Optional Text
  }

let AwsCloudwatchLogSubscriptionFilterRequired =
  { destination_arn: Text
  , filter_pattern: Text
  , log_group_name: Text
  , name: Text
  }
let AwsCloudwatchLogSubscriptionFilter = AwsCloudwatchLogSubscriptionFilterOptional //\\ AwsCloudwatchLogSubscriptionFilterRequired

in
{ AwsCloudwatchLogSubscriptionFilterOptional = AwsCloudwatchLogSubscriptionFilterOptional
, AwsCloudwatchLogSubscriptionFilterRequired = AwsCloudwatchLogSubscriptionFilterRequired
, AwsCloudwatchLogSubscriptionFilter = AwsCloudwatchLogSubscriptionFilter
}
