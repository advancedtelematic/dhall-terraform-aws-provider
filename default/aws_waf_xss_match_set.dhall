
let fieldToMatch =
  { data = None Text }

let xssMatchTuples = {}

let awsWafXssMatchSet =
  { xss_match_tuples = None (List (../dhall/aws_waf_xss_match_set.dhall).XssMatchTuples) }

in
{ awsWafXssMatchSet = awsWafXssMatchSet
, fieldToMatch = fieldToMatch
}
