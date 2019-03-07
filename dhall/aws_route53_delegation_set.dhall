
let AwsRoute53DelegationSetOptional =
  { reference_name: Optional Text }

let AwsRoute53DelegationSetRequired = {}
let AwsRoute53DelegationSet = AwsRoute53DelegationSetOptional //\\ AwsRoute53DelegationSetRequired

in
{ AwsRoute53DelegationSetOptional = AwsRoute53DelegationSetOptional
, AwsRoute53DelegationSetRequired = AwsRoute53DelegationSetRequired
, AwsRoute53DelegationSet = AwsRoute53DelegationSet
}
