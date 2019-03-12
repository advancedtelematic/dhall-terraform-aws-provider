
let AwsEipOptional =
  { associate_with_private_ip : Optional Text
  , instance : Optional Text
  , network_interface : Optional Text
  , public_ipv4_pool : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , vpc : Optional Bool
  }

let AwsEipRequired = {}
let AwsEip = AwsEipOptional //\\ AwsEipRequired

in
{ AwsEipOptional = AwsEipOptional
, AwsEipRequired = AwsEipRequired
, AwsEip = AwsEip
}
