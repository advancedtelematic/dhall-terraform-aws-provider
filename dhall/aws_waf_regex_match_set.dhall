
let FieldToMatchOptional =
  { data : Optional Text }

let FieldToMatchRequired =
  { type : Text }
let FieldToMatch = FieldToMatchOptional //\\ FieldToMatchRequired

let RegexMatchTupleOptional = {}

let RegexMatchTupleRequired =
  { regex_pattern_set_id : Text
  , text_transformation : Text
  , field_to_match : FieldToMatch
  }
let RegexMatchTuple = RegexMatchTupleOptional //\\ RegexMatchTupleRequired

let AwsWafRegexMatchSetOptional =
  { regex_match_tuple : Optional (List RegexMatchTuple) }

let AwsWafRegexMatchSetRequired =
  { name : Text }
let AwsWafRegexMatchSet = AwsWafRegexMatchSetOptional //\\ AwsWafRegexMatchSetRequired

in
{ AwsWafRegexMatchSetOptional = AwsWafRegexMatchSetOptional
, AwsWafRegexMatchSetRequired = AwsWafRegexMatchSetRequired
, AwsWafRegexMatchSet = AwsWafRegexMatchSet
, RegexMatchTuple = RegexMatchTuple
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
}
