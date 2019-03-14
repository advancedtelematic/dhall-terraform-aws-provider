
let action = {}

let activatedRule =
  { type = None Text }

let awsWafRuleGroup =
  { activated_rule = None (List (../dhall/aws_waf_rule_group.dhall).ActivatedRule) }

in
{ awsWafRuleGroup = awsWafRuleGroup
, activatedRule = activatedRule
}
