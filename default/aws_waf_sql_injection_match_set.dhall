
let fieldToMatch =
  { data = None Text }

let sqlInjectionMatchTuples = {}

let awsWafSqlInjectionMatchSet =
  { sql_injection_match_tuples = None (List (../dhall/aws_waf_sql_injection_match_set.dhall).SqlInjectionMatchTuples) }

in
{ awsWafSqlInjectionMatchSet = awsWafSqlInjectionMatchSet
, fieldToMatch = fieldToMatch
}
