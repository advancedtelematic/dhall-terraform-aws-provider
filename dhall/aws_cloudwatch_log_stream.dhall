
let AwsCloudwatchLogStreamOptional =
  { arn: Optional Text }

let AwsCloudwatchLogStreamRequired =
  { log_group_name: Text
  , name: Text
  }
let AwsCloudwatchLogStream = AwsCloudwatchLogStreamOptional //\\ AwsCloudwatchLogStreamRequired

in
{ AwsCloudwatchLogStreamOptional = AwsCloudwatchLogStreamOptional
, AwsCloudwatchLogStreamRequired = AwsCloudwatchLogStreamRequired
, AwsCloudwatchLogStream = AwsCloudwatchLogStream
}
