
let predicate = {}

let awsWafregionalRateBasedRule =
  { predicate = None (List (../dhall/aws_wafregional_rate_based_rule.dhall).Predicate) }

in
{ awsWafregionalRateBasedRule = awsWafregionalRateBasedRule
}
