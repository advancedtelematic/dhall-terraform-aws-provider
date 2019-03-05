
let PolicyAttributeOptional =
  { name: Optional Text
  , value: Optional Text
  }

let PolicyAttributeRequired = {}
let PolicyAttribute = PolicyAttributeOptional //\\ PolicyAttributeRequired

let AwsLoadBalancerPolicyOptional =
  { policy_attribute: Optional (List PolicyAttribute) }

let AwsLoadBalancerPolicyRequired =
  { load_balancer_name: Text
  , policy_name: Text
  , policy_type_name: Text
  }
let AwsLoadBalancerPolicy = AwsLoadBalancerPolicyOptional //\\ AwsLoadBalancerPolicyRequired

in
{ AwsLoadBalancerPolicyOptional = AwsLoadBalancerPolicyOptional
, AwsLoadBalancerPolicyRequired = AwsLoadBalancerPolicyRequired
, AwsLoadBalancerPolicy = AwsLoadBalancerPolicy
, PolicyAttributeOptional = PolicyAttributeOptional
, PolicyAttributeRequired = PolicyAttributeRequired
, PolicyAttribute = PolicyAttribute
}
