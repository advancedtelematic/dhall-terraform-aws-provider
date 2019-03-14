
let awsEc2TransitGateway =
  { amazon_side_asn = None Natural
  , auto_accept_shared_attachments = None Text
  , default_route_table_association = None Text
  , default_route_table_propagation = None Text
  , description = None Text
  , dns_support = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpn_ecmp_support = None Text
  }

in
{ awsEc2TransitGateway = awsEc2TransitGateway
}
