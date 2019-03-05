
let AwsIotPolicyOptional =
  { arn: Optional Text
  , default_version_id: Optional Text
  }

let AwsIotPolicyRequired =
  { name: Text
  , policy: Text
  }
let AwsIotPolicy = AwsIotPolicyOptional //\\ AwsIotPolicyRequired

in
{ AwsIotPolicyOptional = AwsIotPolicyOptional
, AwsIotPolicyRequired = AwsIotPolicyRequired
, AwsIotPolicy = AwsIotPolicy
}
