
let action = {}

let activatedRule =
  { type = None Text }

let awsWafregionalRuleGroup =
  { activated_rule = None (List (../dhall/aws_wafregional_rule_group.dhall).ActivatedRule) }

in
{ awsWafregionalRuleGroup = awsWafregionalRuleGroup
, activatedRule = activatedRule
}
