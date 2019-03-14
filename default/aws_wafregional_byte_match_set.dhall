
let fieldToMatch =
  { data = None Text }

let byteMatchTuple =
  { target_string = None Text }

let fieldToMatch =
  { data = None Text }

let byteMatchTuples =
  { target_string = None Text }

let awsWafregionalByteMatchSet =
  { byte_match_tuple = None (List (../dhall/aws_wafregional_byte_match_set.dhall).ByteMatchTuple)
  , byte_match_tuples = None (List (../dhall/aws_wafregional_byte_match_set.dhall).ByteMatchTuples)
  }

in
{ awsWafregionalByteMatchSet = awsWafregionalByteMatchSet
, byteMatchTuples = byteMatchTuples
, fieldToMatch = fieldToMatch
, byteMatchTuple = byteMatchTuple
, fieldToMatch = fieldToMatch
}
