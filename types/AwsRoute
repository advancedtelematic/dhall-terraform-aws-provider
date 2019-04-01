
let AwsRouteOptional =
  { destination_cidr_block : Optional Text
  , destination_ipv6_cidr_block : Optional Text
  , egress_only_gateway_id : Optional Text
  , gateway_id : Optional Text
  , instance_id : Optional Text
  , nat_gateway_id : Optional Text
  , network_interface_id : Optional Text
  , transit_gateway_id : Optional Text
  , vpc_peering_connection_id : Optional Text
  }

let AwsRouteRequired =
  { route_table_id : Text }
let AwsRoute = AwsRouteOptional //\\ AwsRouteRequired

in
{ AwsRouteOptional = AwsRouteOptional
, AwsRouteRequired = AwsRouteRequired
, AwsRoute = AwsRoute
}
