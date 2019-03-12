
let AwsCloudwatchLogDestinationPolicyOptional = {}

let AwsCloudwatchLogDestinationPolicyRequired =
  { access_policy : Text
  , destination_name : Text
  }
let AwsCloudwatchLogDestinationPolicy = AwsCloudwatchLogDestinationPolicyOptional //\\ AwsCloudwatchLogDestinationPolicyRequired

in
{ AwsCloudwatchLogDestinationPolicy = AwsCloudwatchLogDestinationPolicy
}
