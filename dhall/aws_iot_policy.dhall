
let AwsIotPolicyOptional = {}

let AwsIotPolicyRequired =
  { name : Text
  , policy : Text
  }
let AwsIotPolicy = AwsIotPolicyOptional //\\ AwsIotPolicyRequired

in
{ AwsIotPolicy = AwsIotPolicy
}
