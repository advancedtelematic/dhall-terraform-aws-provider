
let AwsEc2TransitGatewayVpcAttachmentOptional =
  { dns_support : Optional Text
  , ipv6_support : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , transit_gateway_default_route_table_association : Optional Bool
  , transit_gateway_default_route_table_propagation : Optional Bool
  }

let AwsEc2TransitGatewayVpcAttachmentRequired =
  { subnet_ids : (List Text)
  , transit_gateway_id : Text
  , vpc_id : Text
  }
let AwsEc2TransitGatewayVpcAttachment = AwsEc2TransitGatewayVpcAttachmentOptional //\\ AwsEc2TransitGatewayVpcAttachmentRequired

in
{ AwsEc2TransitGatewayVpcAttachmentOptional = AwsEc2TransitGatewayVpcAttachmentOptional
, AwsEc2TransitGatewayVpcAttachmentRequired = AwsEc2TransitGatewayVpcAttachmentRequired
, AwsEc2TransitGatewayVpcAttachment = AwsEc2TransitGatewayVpcAttachment
}
