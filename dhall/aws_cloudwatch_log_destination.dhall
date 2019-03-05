
let AwsCloudwatchLogDestinationOptional =
  { arn: Optional Text }

let AwsCloudwatchLogDestinationRequired =
  { name: Text
  , role_arn: Text
  , target_arn: Text
  }
let AwsCloudwatchLogDestination = AwsCloudwatchLogDestinationOptional //\\ AwsCloudwatchLogDestinationRequired

in
{ AwsCloudwatchLogDestinationOptional = AwsCloudwatchLogDestinationOptional
, AwsCloudwatchLogDestinationRequired = AwsCloudwatchLogDestinationRequired
, AwsCloudwatchLogDestination = AwsCloudwatchLogDestination
}
