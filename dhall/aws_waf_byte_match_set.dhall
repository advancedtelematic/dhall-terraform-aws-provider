
let FieldToMatchOptional =
  { data : Optional Text }

let FieldToMatchRequired =
  { type : Text }
let FieldToMatch = FieldToMatchOptional //\\ FieldToMatchRequired

let ByteMatchTuplesOptional =
  { target_string : Optional Text }

let ByteMatchTuplesRequired =
  { positional_constraint : Text
  , text_transformation : Text
  , field_to_match : FieldToMatch
  }
let ByteMatchTuples = ByteMatchTuplesOptional //\\ ByteMatchTuplesRequired

let AwsWafByteMatchSetOptional =
  { byte_match_tuples : Optional (List ByteMatchTuples) }

let AwsWafByteMatchSetRequired =
  { name : Text }
let AwsWafByteMatchSet = AwsWafByteMatchSetOptional //\\ AwsWafByteMatchSetRequired

in
{ AwsWafByteMatchSetOptional = AwsWafByteMatchSetOptional
, AwsWafByteMatchSetRequired = AwsWafByteMatchSetRequired
, AwsWafByteMatchSet = AwsWafByteMatchSet
, ByteMatchTuplesOptional = ByteMatchTuplesOptional
, ByteMatchTuplesRequired = ByteMatchTuplesRequired
, ByteMatchTuples = ByteMatchTuples
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
}
