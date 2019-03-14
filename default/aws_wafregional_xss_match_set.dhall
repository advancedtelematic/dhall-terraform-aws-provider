
let fieldToMatch =
  { data = None Text }

let xssMatchTuple = {}

let awsWafregionalXssMatchSet =
  { xss_match_tuple = None (List (../dhall/aws_wafregional_xss_match_set.dhall).XssMatchTuple) }

in
{ awsWafregionalXssMatchSet = awsWafregionalXssMatchSet
, fieldToMatch = fieldToMatch
}
