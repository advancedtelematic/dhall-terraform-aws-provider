
let FieldToMatchOptional =
  { data : Optional Text }

let FieldToMatchRequired =
  { type : Text }
let FieldToMatch = FieldToMatchOptional //\\ FieldToMatchRequired

let SqlInjectionMatchTupleOptional = {}

let SqlInjectionMatchTupleRequired =
  { text_transformation : Text
  , field_to_match : FieldToMatch
  }
let SqlInjectionMatchTuple = SqlInjectionMatchTupleOptional //\\ SqlInjectionMatchTupleRequired

let AwsWafregionalSqlInjectionMatchSetOptional =
  { sql_injection_match_tuple : Optional (List SqlInjectionMatchTuple) }

let AwsWafregionalSqlInjectionMatchSetRequired =
  { name : Text }
let AwsWafregionalSqlInjectionMatchSet = AwsWafregionalSqlInjectionMatchSetOptional //\\ AwsWafregionalSqlInjectionMatchSetRequired

in
{ AwsWafregionalSqlInjectionMatchSetOptional = AwsWafregionalSqlInjectionMatchSetOptional
, AwsWafregionalSqlInjectionMatchSetRequired = AwsWafregionalSqlInjectionMatchSetRequired
, AwsWafregionalSqlInjectionMatchSet = AwsWafregionalSqlInjectionMatchSet
, SqlInjectionMatchTuple = SqlInjectionMatchTuple
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
}
