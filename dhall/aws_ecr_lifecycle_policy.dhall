
let AwsEcrLifecyclePolicyOptional = {}

let AwsEcrLifecyclePolicyRequired =
  { policy: Text
  , repository: Text
  }
let AwsEcrLifecyclePolicy = AwsEcrLifecyclePolicyOptional //\\ AwsEcrLifecyclePolicyRequired

in
{ AwsEcrLifecyclePolicy = AwsEcrLifecyclePolicy
}
