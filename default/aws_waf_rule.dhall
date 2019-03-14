
let predicates = {}

let awsWafRule =
  { predicates = None (List (../dhall/aws_waf_rule.dhall).Predicates) }

in
{ awsWafRule = awsWafRule
}
