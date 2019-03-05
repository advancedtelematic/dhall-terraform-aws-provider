
let FieldToMatchOptional =
  { data: Optional Text }

let FieldToMatchRequired =
  { type: Text }
let FieldToMatch = FieldToMatchOptional //\\ FieldToMatchRequired

let RegexMatchTupleOptional = {}

let RegexMatchTupleRequired =
  { regex_pattern_set_id: Text
  , text_transformation: Text
  , field_to_match: FieldToMatch
  }
let RegexMatchTuple = RegexMatchTupleOptional //\\ RegexMatchTupleRequired

let AwsWafregionalRegexMatchSetOptional =
  { regex_match_tuple: Optional (List RegexMatchTuple) }

let AwsWafregionalRegexMatchSetRequired =
  { name: Text }
let AwsWafregionalRegexMatchSet = AwsWafregionalRegexMatchSetOptional //\\ AwsWafregionalRegexMatchSetRequired

in
{ AwsWafregionalRegexMatchSetOptional = AwsWafregionalRegexMatchSetOptional
, AwsWafregionalRegexMatchSetRequired = AwsWafregionalRegexMatchSetRequired
, AwsWafregionalRegexMatchSet = AwsWafregionalRegexMatchSet
, RegexMatchTuple = RegexMatchTuple
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
}
