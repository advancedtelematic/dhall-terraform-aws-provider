
let awsEip =
  { associate_with_private_ip = None Text
  , instance = None Text
  , network_interface = None Text
  , public_ipv4_pool = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpc = None Bool
  }

in
{ awsEip = awsEip
}
