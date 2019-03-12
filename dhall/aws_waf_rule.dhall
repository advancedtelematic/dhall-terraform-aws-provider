
let PredicatesOptional = {}

let PredicatesRequired =
  { data_id : Text
  , negated : Bool
  , type : Text
  }
let Predicates = PredicatesOptional //\\ PredicatesRequired

let AwsWafRuleOptional =
  { predicates : Optional (List Predicates) }

let AwsWafRuleRequired =
  { metric_name : Text
  , name : Text
  }
let AwsWafRule = AwsWafRuleOptional //\\ AwsWafRuleRequired

in
{ AwsWafRuleOptional = AwsWafRuleOptional
, AwsWafRuleRequired = AwsWafRuleRequired
, AwsWafRule = AwsWafRule
, Predicates = Predicates
}
