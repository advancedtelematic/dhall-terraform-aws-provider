
let AwsLoadBalancerBackendServerPolicyOptional =
  { policy_names : Optional (List Text) }

let AwsLoadBalancerBackendServerPolicyRequired =
  { instance_port : Natural
  , load_balancer_name : Text
  }
let AwsLoadBalancerBackendServerPolicy = AwsLoadBalancerBackendServerPolicyOptional //\\ AwsLoadBalancerBackendServerPolicyRequired

in
{ AwsLoadBalancerBackendServerPolicyOptional = AwsLoadBalancerBackendServerPolicyOptional
, AwsLoadBalancerBackendServerPolicyRequired = AwsLoadBalancerBackendServerPolicyRequired
, AwsLoadBalancerBackendServerPolicy = AwsLoadBalancerBackendServerPolicy
}
