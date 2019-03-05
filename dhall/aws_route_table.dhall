
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

let AwsRouteTableOptional =
  { owner_id: Optional Text
  , propagating_vgws: Optional (List Text)
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , route: Optional (List Route)
  }

let AwsRouteTableRequired =
  { vpc_id: Text }
let AwsRouteTable = AwsRouteTableOptional //\\ AwsRouteTableRequired

in
{ AwsRouteTableOptional = AwsRouteTableOptional
, AwsRouteTableRequired = AwsRouteTableRequired
, AwsRouteTable = AwsRouteTable
, RouteOptional = RouteOptional
, RouteRequired = RouteRequired
, Route = Route
}
