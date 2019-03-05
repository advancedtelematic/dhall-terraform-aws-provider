
let AwsEipOptional =
  { allocation_id: Optional Text
  , associate_with_private_ip: Optional Text
  , association_id: Optional Text
  , domain: Optional Text
  , instance: Optional Text
  , network_interface: Optional Text
  , private_ip: Optional Text
  , public_ip: Optional Text
  , public_ipv4_pool: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , vpc: Optional Bool
  }

let AwsEipRequired = {}
let AwsEip = AwsEipOptional //\\ AwsEipRequired

in
{ AwsEipOptional = AwsEipOptional
, AwsEipRequired = AwsEipRequired
, AwsEip = AwsEip
}
