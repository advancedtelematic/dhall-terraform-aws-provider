
let awsVpnGateway =
  { amazon_side_asn = None Text
  , availability_zone = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpc_id = None Text
  }

in
{ awsVpnGateway = awsVpnGateway
}
