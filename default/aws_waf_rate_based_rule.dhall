
let predicates = {}

let awsWafRateBasedRule =
  { predicates = None (List (../dhall/aws_waf_rate_based_rule.dhall).Predicates) }

in
{ awsWafRateBasedRule = awsWafRateBasedRule
}
