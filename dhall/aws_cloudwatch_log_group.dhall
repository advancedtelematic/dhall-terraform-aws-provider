
let AwsCloudwatchLogGroupOptional =
  { arn: Optional Text
  , kms_key_id: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , retention_in_days: Optional Natural
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsCloudwatchLogGroupRequired = {}
let AwsCloudwatchLogGroup = AwsCloudwatchLogGroupOptional //\\ AwsCloudwatchLogGroupRequired

in
{ AwsCloudwatchLogGroupOptional = AwsCloudwatchLogGroupOptional
, AwsCloudwatchLogGroupRequired = AwsCloudwatchLogGroupRequired
, AwsCloudwatchLogGroup = AwsCloudwatchLogGroup
}
