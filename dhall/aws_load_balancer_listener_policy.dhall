
let AwsLoadBalancerListenerPolicyOptional =
  { policy_names : Optional (List Text) }

let AwsLoadBalancerListenerPolicyRequired =
  { load_balancer_name : Text
  , load_balancer_port : Natural
  }
let AwsLoadBalancerListenerPolicy = AwsLoadBalancerListenerPolicyOptional //\\ AwsLoadBalancerListenerPolicyRequired

in
{ AwsLoadBalancerListenerPolicyOptional = AwsLoadBalancerListenerPolicyOptional
, AwsLoadBalancerListenerPolicyRequired = AwsLoadBalancerListenerPolicyRequired
, AwsLoadBalancerListenerPolicy = AwsLoadBalancerListenerPolicy
}
