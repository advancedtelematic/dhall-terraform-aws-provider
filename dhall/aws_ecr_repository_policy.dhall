
let AwsEcrRepositoryPolicyOptional = {}

let AwsEcrRepositoryPolicyRequired =
  { policy : Text
  , repository : Text
  }
let AwsEcrRepositoryPolicy = AwsEcrRepositoryPolicyOptional //\\ AwsEcrRepositoryPolicyRequired

in
{ AwsEcrRepositoryPolicy = AwsEcrRepositoryPolicy
}
