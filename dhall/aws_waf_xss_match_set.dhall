
let FieldToMatchOptional =
  { data: Optional Text }

let FieldToMatchRequired =
  { type: Text }
let FieldToMatch = FieldToMatchOptional //\\ FieldToMatchRequired

let XssMatchTuplesOptional = {}

let XssMatchTuplesRequired =
  { text_transformation: Text
  , field_to_match: FieldToMatch
  }
let XssMatchTuples = XssMatchTuplesOptional //\\ XssMatchTuplesRequired

let AwsWafXssMatchSetOptional =
  { xss_match_tuples: Optional (List XssMatchTuples) }

let AwsWafXssMatchSetRequired =
  { name: Text }
let AwsWafXssMatchSet = AwsWafXssMatchSetOptional //\\ AwsWafXssMatchSetRequired

in
{ AwsWafXssMatchSetOptional = AwsWafXssMatchSetOptional
, AwsWafXssMatchSetRequired = AwsWafXssMatchSetRequired
, AwsWafXssMatchSet = AwsWafXssMatchSet
, XssMatchTuples = XssMatchTuples
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
}
