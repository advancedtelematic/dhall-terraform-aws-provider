
let fieldToMatch =
  { data = None Text }

let byteMatchTuples =
  { target_string = None Text }

let awsWafByteMatchSet =
  { byte_match_tuples = None (List (../dhall/aws_waf_byte_match_set.dhall).ByteMatchTuples) }

in
{ awsWafByteMatchSet = awsWafByteMatchSet
, byteMatchTuples = byteMatchTuples
, fieldToMatch = fieldToMatch
}
