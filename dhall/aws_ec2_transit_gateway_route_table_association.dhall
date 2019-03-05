
let AwsEc2TransitGatewayRouteTableAssociationOptional =
  { resource_id: Optional Text
  , resource_type: Optional Text
  }

let AwsEc2TransitGatewayRouteTableAssociationRequired =
  { transit_gateway_attachment_id: Text
  , transit_gateway_route_table_id: Text
  }
let AwsEc2TransitGatewayRouteTableAssociation = AwsEc2TransitGatewayRouteTableAssociationOptional //\\ AwsEc2TransitGatewayRouteTableAssociationRequired

in
{ AwsEc2TransitGatewayRouteTableAssociationOptional = AwsEc2TransitGatewayRouteTableAssociationOptional
, AwsEc2TransitGatewayRouteTableAssociationRequired = AwsEc2TransitGatewayRouteTableAssociationRequired
, AwsEc2TransitGatewayRouteTableAssociation = AwsEc2TransitGatewayRouteTableAssociation
}
