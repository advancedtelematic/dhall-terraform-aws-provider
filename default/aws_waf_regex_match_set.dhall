
let fieldToMatch =
  { data = None Text }

let regexMatchTuple = {}

let awsWafRegexMatchSet =
  { regex_match_tuple = None (List (../dhall/aws_waf_regex_match_set.dhall).RegexMatchTuple) }

in
{ awsWafRegexMatchSet = awsWafRegexMatchSet
, fieldToMatch = fieldToMatch
}
