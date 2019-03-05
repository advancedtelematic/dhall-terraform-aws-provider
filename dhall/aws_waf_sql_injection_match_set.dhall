
let FieldToMatchOptional =
  { data: Optional Text }

let FieldToMatchRequired =
  { type: Text }
let FieldToMatch = FieldToMatchOptional //\\ FieldToMatchRequired

let SqlInjectionMatchTuplesOptional = {}

let SqlInjectionMatchTuplesRequired =
  { text_transformation: Text
  , field_to_match: FieldToMatch
  }
let SqlInjectionMatchTuples = SqlInjectionMatchTuplesOptional //\\ SqlInjectionMatchTuplesRequired

let AwsWafSqlInjectionMatchSetOptional =
  { sql_injection_match_tuples: Optional (List SqlInjectionMatchTuples) }

let AwsWafSqlInjectionMatchSetRequired =
  { name: Text }
let AwsWafSqlInjectionMatchSet = AwsWafSqlInjectionMatchSetOptional //\\ AwsWafSqlInjectionMatchSetRequired

in
{ AwsWafSqlInjectionMatchSetOptional = AwsWafSqlInjectionMatchSetOptional
, AwsWafSqlInjectionMatchSetRequired = AwsWafSqlInjectionMatchSetRequired
, AwsWafSqlInjectionMatchSet = AwsWafSqlInjectionMatchSet
, SqlInjectionMatchTuples = SqlInjectionMatchTuples
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
}
