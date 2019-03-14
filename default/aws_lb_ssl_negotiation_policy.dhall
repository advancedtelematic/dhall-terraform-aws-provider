
let attribute = {}

let awsLbSslNegotiationPolicy =
  { attribute = None (List (../dhall/aws_lb_ssl_negotiation_policy.dhall).Attribute) }

in
{ awsLbSslNegotiationPolicy = awsLbSslNegotiationPolicy
}
