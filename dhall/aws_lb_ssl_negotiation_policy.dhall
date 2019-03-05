
let AttributeOptional = {}

let AttributeRequired =
  { name: Text
  , value: Text
  }
let Attribute = AttributeOptional //\\ AttributeRequired

let AwsLbSslNegotiationPolicyOptional =
  { attribute: Optional (List Attribute) }

let AwsLbSslNegotiationPolicyRequired =
  { lb_port: Natural
  , load_balancer: Text
  , name: Text
  }
let AwsLbSslNegotiationPolicy = AwsLbSslNegotiationPolicyOptional //\\ AwsLbSslNegotiationPolicyRequired

in
{ AwsLbSslNegotiationPolicyOptional = AwsLbSslNegotiationPolicyOptional
, AwsLbSslNegotiationPolicyRequired = AwsLbSslNegotiationPolicyRequired
, AwsLbSslNegotiationPolicy = AwsLbSslNegotiationPolicy
, Attribute = Attribute
}
