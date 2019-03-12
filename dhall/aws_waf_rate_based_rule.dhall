
let PredicatesOptional = {}

let PredicatesRequired =
  { data_id : Text
  , negated : Bool
  , type : Text
  }
let Predicates = PredicatesOptional //\\ PredicatesRequired

let AwsWafRateBasedRuleOptional =
  { predicates : Optional (List Predicates) }

let AwsWafRateBasedRuleRequired =
  { metric_name : Text
  , name : Text
  , rate_key : Text
  , rate_limit : Natural
  }
let AwsWafRateBasedRule = AwsWafRateBasedRuleOptional //\\ AwsWafRateBasedRuleRequired

in
{ AwsWafRateBasedRuleOptional = AwsWafRateBasedRuleOptional
, AwsWafRateBasedRuleRequired = AwsWafRateBasedRuleRequired
, AwsWafRateBasedRule = AwsWafRateBasedRule
, Predicates = Predicates
}
