
let awsEipAssociation =
  { allocation_id = None Text
  , allow_reassociation = None Bool
  , instance_id = None Text
  , network_interface_id = None Text
  , private_ip_address = None Text
  , public_ip = None Text
  }

in
{ awsEipAssociation = awsEipAssociation
}
