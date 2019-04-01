
let AwsIamUserPolicyOptional =
  { name : Optional Text
  , name_prefix : Optional Text
  }

let AwsIamUserPolicyRequired =
  { policy : Text
  , user : Text
  }
let AwsIamUserPolicy = AwsIamUserPolicyOptional //\\ AwsIamUserPolicyRequired

in
{ AwsIamUserPolicyOptional = AwsIamUserPolicyOptional
, AwsIamUserPolicyRequired = AwsIamUserPolicyRequired
, AwsIamUserPolicy = AwsIamUserPolicy
}
