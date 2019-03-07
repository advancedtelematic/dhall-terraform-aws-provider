
let AwsCloudwatchLogStreamOptional = {}

let AwsCloudwatchLogStreamRequired =
  { log_group_name: Text
  , name: Text
  }
let AwsCloudwatchLogStream = AwsCloudwatchLogStreamOptional //\\ AwsCloudwatchLogStreamRequired

in
{ AwsCloudwatchLogStream = AwsCloudwatchLogStream
}
