
let AwsRoute53QueryLogOptional = {}

let AwsRoute53QueryLogRequired =
  { cloudwatch_log_group_arn : Text
  , zone_id : Text
  }
let AwsRoute53QueryLog = AwsRoute53QueryLogOptional //\\ AwsRoute53QueryLogRequired

in
{ AwsRoute53QueryLog = AwsRoute53QueryLog
}
