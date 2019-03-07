
let AwsEc2TransitGatewayOptional =
  { amazon_side_asn: Optional Natural
  , auto_accept_shared_attachments: Optional Text
  , default_route_table_association: Optional Text
  , default_route_table_propagation: Optional Text
  , description: Optional Text
  , dns_support: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , vpn_ecmp_support: Optional Text
  }

let AwsEc2TransitGatewayRequired = {}
let AwsEc2TransitGateway = AwsEc2TransitGatewayOptional //\\ AwsEc2TransitGatewayRequired

in
{ AwsEc2TransitGatewayOptional = AwsEc2TransitGatewayOptional
, AwsEc2TransitGatewayRequired = AwsEc2TransitGatewayRequired
, AwsEc2TransitGateway = AwsEc2TransitGateway
}
