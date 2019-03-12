
let AwsEipAssociationOptional =
  { allocation_id : Optional Text
  , allow_reassociation : Optional Bool
  , instance_id : Optional Text
  , network_interface_id : Optional Text
  , private_ip_address : Optional Text
  , public_ip : Optional Text
  }

let AwsEipAssociationRequired = {}
let AwsEipAssociation = AwsEipAssociationOptional //\\ AwsEipAssociationRequired

in
{ AwsEipAssociationOptional = AwsEipAssociationOptional
, AwsEipAssociationRequired = AwsEipAssociationRequired
, AwsEipAssociation = AwsEipAssociation
}
