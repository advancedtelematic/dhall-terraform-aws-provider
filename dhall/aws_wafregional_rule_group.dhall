
let ActionOptional = {}

let ActionRequired =
  { type: Text }
let Action = ActionOptional //\\ ActionRequired

let ActivatedRuleOptional =
  { type: Optional Text }

let ActivatedRuleRequired =
  { priority: Natural
  , rule_id: Text
  , action: Action
  }
let ActivatedRule = ActivatedRuleOptional //\\ ActivatedRuleRequired

let AwsWafregionalRuleGroupOptional =
  { activated_rule: Optional (List ActivatedRule) }

let AwsWafregionalRuleGroupRequired =
  { metric_name: Text
  , name: Text
  }
let AwsWafregionalRuleGroup = AwsWafregionalRuleGroupOptional //\\ AwsWafregionalRuleGroupRequired

in
{ AwsWafregionalRuleGroupOptional = AwsWafregionalRuleGroupOptional
, AwsWafregionalRuleGroupRequired = AwsWafregionalRuleGroupRequired
, AwsWafregionalRuleGroup = AwsWafregionalRuleGroup
, ActivatedRuleOptional = ActivatedRuleOptional
, ActivatedRuleRequired = ActivatedRuleRequired
, ActivatedRule = ActivatedRule
, Action = Action
}
