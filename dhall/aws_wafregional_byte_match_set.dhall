
let FieldToMatchOptional =
  { data : Optional Text }

let FieldToMatchRequired =
  { type : Text }
let FieldToMatch = FieldToMatchOptional //\\ FieldToMatchRequired

let ByteMatchTupleOptional =
  { target_string : Optional Text }

let ByteMatchTupleRequired =
  { positional_constraint : Text
  , text_transformation : Text
  , field_to_match : FieldToMatch
  }
let ByteMatchTuple = ByteMatchTupleOptional //\\ ByteMatchTupleRequired

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

let AwsWafregionalByteMatchSetOptional =
  { byte_match_tuple : Optional (List ByteMatchTuple)
  , byte_match_tuples : Optional (List ByteMatchTuples)
  }

let AwsWafregionalByteMatchSetRequired =
  { name : Text }
let AwsWafregionalByteMatchSet = AwsWafregionalByteMatchSetOptional //\\ AwsWafregionalByteMatchSetRequired

in
{ AwsWafregionalByteMatchSetOptional = AwsWafregionalByteMatchSetOptional
, AwsWafregionalByteMatchSetRequired = AwsWafregionalByteMatchSetRequired
, AwsWafregionalByteMatchSet = AwsWafregionalByteMatchSet
, ByteMatchTuplesOptional = ByteMatchTuplesOptional
, ByteMatchTuplesRequired = ByteMatchTuplesRequired
, ByteMatchTuples = ByteMatchTuples
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
, ByteMatchTupleOptional = ByteMatchTupleOptional
, ByteMatchTupleRequired = ByteMatchTupleRequired
, ByteMatchTuple = ByteMatchTuple
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
}
