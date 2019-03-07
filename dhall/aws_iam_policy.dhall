
let AwsIamPolicyOptional =
  { description: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , path: Optional Text
  }

let AwsIamPolicyRequired =
  { policy: Text }
let AwsIamPolicy = AwsIamPolicyOptional //\\ AwsIamPolicyRequired

in
{ AwsIamPolicyOptional = AwsIamPolicyOptional
, AwsIamPolicyRequired = AwsIamPolicyRequired
, AwsIamPolicy = AwsIamPolicy
}
