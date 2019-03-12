
let PredicateOptional = {}

let PredicateRequired =
  { data_id : Text
  , negated : Bool
  , type : Text
  }
let Predicate = PredicateOptional //\\ PredicateRequired

let AwsWafregionalRateBasedRuleOptional =
  { predicate : Optional (List Predicate) }

let AwsWafregionalRateBasedRuleRequired =
  { metric_name : Text
  , name : Text
  , rate_key : Text
  , rate_limit : Natural
  }
let AwsWafregionalRateBasedRule = AwsWafregionalRateBasedRuleOptional //\\ AwsWafregionalRateBasedRuleRequired

in
{ AwsWafregionalRateBasedRuleOptional = AwsWafregionalRateBasedRuleOptional
, AwsWafregionalRateBasedRuleRequired = AwsWafregionalRateBasedRuleRequired
, AwsWafregionalRateBasedRule = AwsWafregionalRateBasedRule
, Predicate = Predicate
}
