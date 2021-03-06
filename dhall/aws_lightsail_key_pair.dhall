
let AwsLightsailKeyPairOptional =
  { name : Optional Text
  , name_prefix : Optional Text
  , pgp_key : Optional Text
  , public_key : Optional Text
  }

let AwsLightsailKeyPairRequired = {}
let AwsLightsailKeyPair = AwsLightsailKeyPairOptional //\\ AwsLightsailKeyPairRequired

in
{ AwsLightsailKeyPairOptional = AwsLightsailKeyPairOptional
, AwsLightsailKeyPairRequired = AwsLightsailKeyPairRequired
, AwsLightsailKeyPair = AwsLightsailKeyPair
}
