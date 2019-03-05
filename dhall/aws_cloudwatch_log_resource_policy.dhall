
let AwsCloudwatchLogResourcePolicyOptional = {}

let AwsCloudwatchLogResourcePolicyRequired =
  { policy_document: Text
  , policy_name: Text
  }
let AwsCloudwatchLogResourcePolicy = AwsCloudwatchLogResourcePolicyOptional //\\ AwsCloudwatchLogResourcePolicyRequired

in
{ AwsCloudwatchLogResourcePolicy = AwsCloudwatchLogResourcePolicy
}
