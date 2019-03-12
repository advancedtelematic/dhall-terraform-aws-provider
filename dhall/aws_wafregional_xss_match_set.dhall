
let FieldToMatchOptional =
  { data : Optional Text }

let FieldToMatchRequired =
  { type : Text }
let FieldToMatch = FieldToMatchOptional //\\ FieldToMatchRequired

let XssMatchTupleOptional = {}

let XssMatchTupleRequired =
  { text_transformation : Text
  , field_to_match : FieldToMatch
  }
let XssMatchTuple = XssMatchTupleOptional //\\ XssMatchTupleRequired

let AwsWafregionalXssMatchSetOptional =
  { xss_match_tuple : Optional (List XssMatchTuple) }

let AwsWafregionalXssMatchSetRequired =
  { name : Text }
let AwsWafregionalXssMatchSet = AwsWafregionalXssMatchSetOptional //\\ AwsWafregionalXssMatchSetRequired

in
{ AwsWafregionalXssMatchSetOptional = AwsWafregionalXssMatchSetOptional
, AwsWafregionalXssMatchSetRequired = AwsWafregionalXssMatchSetRequired
, AwsWafregionalXssMatchSet = AwsWafregionalXssMatchSet
, XssMatchTuple = XssMatchTuple
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
}
