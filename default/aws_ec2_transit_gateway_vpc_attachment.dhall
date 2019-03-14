
let awsEc2TransitGatewayVpcAttachment =
  { dns_support = None Text
  , ipv6_support = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , transit_gateway_default_route_table_association = None Bool
  , transit_gateway_default_route_table_propagation = None Bool
  }

in
{ awsEc2TransitGatewayVpcAttachment = awsEc2TransitGatewayVpcAttachment
}
