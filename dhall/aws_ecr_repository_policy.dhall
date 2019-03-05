
let AwsEcrRepositoryPolicyOptional =
  { registry_id: Optional Text }

let AwsEcrRepositoryPolicyRequired =
  { policy: Text
  , repository: Text
  }
let AwsEcrRepositoryPolicy = AwsEcrRepositoryPolicyOptional //\\ AwsEcrRepositoryPolicyRequired

in
{ AwsEcrRepositoryPolicyOptional = AwsEcrRepositoryPolicyOptional
, AwsEcrRepositoryPolicyRequired = AwsEcrRepositoryPolicyRequired
, AwsEcrRepositoryPolicy = AwsEcrRepositoryPolicy
}
