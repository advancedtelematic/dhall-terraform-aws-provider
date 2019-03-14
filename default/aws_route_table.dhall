
let route =
  { cidr_block = None Text
  , egress_only_gateway_id = None Text
  , gateway_id = None Text
  , instance_id = None Text
  , ipv6_cidr_block = None Text
  , nat_gateway_id = None Text
  , network_interface_id = None Text
  , transit_gateway_id = None Text
  , vpc_peering_connection_id = None Text
  }

let awsRouteTable =
  { propagating_vgws = None (List Text)
  , tags = None (List { mapKey : Text, mapValue : Text })
  , route = None (List (../dhall/aws_route_table.dhall).Route)
  }

in
{ awsRouteTable = awsRouteTable
, route = route
}
