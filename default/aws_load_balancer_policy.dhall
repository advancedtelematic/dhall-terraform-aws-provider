
let policyAttribute =
  { name = None Text
  , value = None Text
  }

let awsLoadBalancerPolicy =
  { policy_attribute = None (List (../dhall/aws_load_balancer_policy.dhall).PolicyAttribute) }

in
{ awsLoadBalancerPolicy = awsLoadBalancerPolicy
, policyAttribute = policyAttribute
}
