
let PredicateOptional = {}

let PredicateRequired =
  { data_id: Text
  , negated: Bool
  , type: Text
  }
let Predicate = PredicateOptional //\\ PredicateRequired

let AwsWafregionalRuleOptional =
  { predicate: Optional (List Predicate) }

let AwsWafregionalRuleRequired =
  { metric_name: Text
  , name: Text
  }
let AwsWafregionalRule = AwsWafregionalRuleOptional //\\ AwsWafregionalRuleRequired

in
{ AwsWafregionalRuleOptional = AwsWafregionalRuleOptional
, AwsWafregionalRuleRequired = AwsWafregionalRuleRequired
, AwsWafregionalRule = AwsWafregionalRule
, Predicate = Predicate
}
