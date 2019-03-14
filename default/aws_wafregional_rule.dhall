
let predicate = {}

let awsWafregionalRule =
  { predicate = None (List (../dhall/aws_wafregional_rule.dhall).Predicate) }

in
{ awsWafregionalRule = awsWafregionalRule
}
