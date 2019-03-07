
let AwsEc2TransitGatewayRouteTableOptional =
  { tags: Optional (List { mapKey : Text, mapValue : Text }) }

let AwsEc2TransitGatewayRouteTableRequired =
  { transit_gateway_id: Text }
let AwsEc2TransitGatewayRouteTable = AwsEc2TransitGatewayRouteTableOptional //\\ AwsEc2TransitGatewayRouteTableRequired

in
{ AwsEc2TransitGatewayRouteTableOptional = AwsEc2TransitGatewayRouteTableOptional
, AwsEc2TransitGatewayRouteTableRequired = AwsEc2TransitGatewayRouteTableRequired
, AwsEc2TransitGatewayRouteTable = AwsEc2TransitGatewayRouteTable
}
