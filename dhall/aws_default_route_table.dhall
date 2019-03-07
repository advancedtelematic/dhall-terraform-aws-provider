
let RouteOptional =
  { cidr_block: Optional Text
  , egress_only_gateway_id: Optional Text
  , gateway_id: Optional Text
  , instance_id: Optional Text
  , ipv6_cidr_block: Optional Text
  , nat_gateway_id: Optional Text
  , network_interface_id: Optional Text
  , transit_gateway_id: Optional Text
  , vpc_peering_connection_id: Optional Text
  }

let RouteRequired = {}
let Route = RouteOptional //\\ RouteRequired

let AwsDefaultRouteTableOptional =
  { propagating_vgws: Optional (List Text)
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , route: Optional (List Route)
  }

let AwsDefaultRouteTableRequired =
  { default_route_table_id: Text }
let AwsDefaultRouteTable = AwsDefaultRouteTableOptional //\\ AwsDefaultRouteTableRequired

in
{ AwsDefaultRouteTableOptional = AwsDefaultRouteTableOptional
, AwsDefaultRouteTableRequired = AwsDefaultRouteTableRequired
, AwsDefaultRouteTable = AwsDefaultRouteTable
, RouteOptional = RouteOptional
, RouteRequired = RouteRequired
, Route = Route
}
