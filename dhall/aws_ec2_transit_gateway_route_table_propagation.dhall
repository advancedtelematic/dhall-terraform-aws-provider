
let AwsEc2TransitGatewayRouteTablePropagationOptional =
  { resource_id: Optional Text
  , resource_type: Optional Text
  }

let AwsEc2TransitGatewayRouteTablePropagationRequired =
  { transit_gateway_attachment_id: Text
  , transit_gateway_route_table_id: Text
  }
let AwsEc2TransitGatewayRouteTablePropagation = AwsEc2TransitGatewayRouteTablePropagationOptional //\\ AwsEc2TransitGatewayRouteTablePropagationRequired

in
{ AwsEc2TransitGatewayRouteTablePropagationOptional = AwsEc2TransitGatewayRouteTablePropagationOptional
, AwsEc2TransitGatewayRouteTablePropagationRequired = AwsEc2TransitGatewayRouteTablePropagationRequired
, AwsEc2TransitGatewayRouteTablePropagation = AwsEc2TransitGatewayRouteTablePropagation
}
