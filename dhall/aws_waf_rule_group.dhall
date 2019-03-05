
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

let AwsWafRuleGroupOptional =
  { activated_rule: Optional (List ActivatedRule) }

let AwsWafRuleGroupRequired =
  { metric_name: Text
  , name: Text
  }
let AwsWafRuleGroup = AwsWafRuleGroupOptional //\\ AwsWafRuleGroupRequired

in
{ AwsWafRuleGroupOptional = AwsWafRuleGroupOptional
, AwsWafRuleGroupRequired = AwsWafRuleGroupRequired
, AwsWafRuleGroup = AwsWafRuleGroup
, ActivatedRuleOptional = ActivatedRuleOptional
, ActivatedRuleRequired = ActivatedRuleRequired
, ActivatedRule = ActivatedRule
, Action = Action
}
