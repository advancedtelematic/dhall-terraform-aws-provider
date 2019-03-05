
let AwsEcrLifecyclePolicyOptional =
  { registry_id: Optional Text }

let AwsEcrLifecyclePolicyRequired =
  { policy: Text
  , repository: Text
  }
let AwsEcrLifecyclePolicy = AwsEcrLifecyclePolicyOptional //\\ AwsEcrLifecyclePolicyRequired

in
{ AwsEcrLifecyclePolicyOptional = AwsEcrLifecyclePolicyOptional
, AwsEcrLifecyclePolicyRequired = AwsEcrLifecyclePolicyRequired
, AwsEcrLifecyclePolicy = AwsEcrLifecyclePolicy
}
