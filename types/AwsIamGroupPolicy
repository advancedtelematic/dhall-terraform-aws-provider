
let AwsIamGroupPolicyOptional =
  { name : Optional Text
  , name_prefix : Optional Text
  }

let AwsIamGroupPolicyRequired =
  { group : Text
  , policy : Text
  }
let AwsIamGroupPolicy = AwsIamGroupPolicyOptional //\\ AwsIamGroupPolicyRequired

in
{ AwsIamGroupPolicyOptional = AwsIamGroupPolicyOptional
, AwsIamGroupPolicyRequired = AwsIamGroupPolicyRequired
, AwsIamGroupPolicy = AwsIamGroupPolicy
}
