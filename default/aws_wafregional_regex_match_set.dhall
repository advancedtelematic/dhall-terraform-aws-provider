
let fieldToMatch =
  { data = None Text }

let regexMatchTuple = {}

let awsWafregionalRegexMatchSet =
  { regex_match_tuple = None (List (../dhall/aws_wafregional_regex_match_set.dhall).RegexMatchTuple) }

in
{ awsWafregionalRegexMatchSet = awsWafregionalRegexMatchSet
, fieldToMatch = fieldToMatch
}
