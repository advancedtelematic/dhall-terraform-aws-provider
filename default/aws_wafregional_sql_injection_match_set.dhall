
let fieldToMatch =
  { data = None Text }

let sqlInjectionMatchTuple = {}

let awsWafregionalSqlInjectionMatchSet =
  { sql_injection_match_tuple = None (List (../dhall/aws_wafregional_sql_injection_match_set.dhall).SqlInjectionMatchTuple) }

in
{ awsWafregionalSqlInjectionMatchSet = awsWafregionalSqlInjectionMatchSet
, fieldToMatch = fieldToMatch
}
