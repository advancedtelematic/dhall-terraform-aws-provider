
let AwsVpnGatewayRoutePropagationOptional = {}

let AwsVpnGatewayRoutePropagationRequired =
  { route_table_id: Text
  , vpn_gateway_id: Text
  }
let AwsVpnGatewayRoutePropagation = AwsVpnGatewayRoutePropagationOptional //\\ AwsVpnGatewayRoutePropagationRequired

in
{ AwsVpnGatewayRoutePropagation = AwsVpnGatewayRoutePropagation
}
