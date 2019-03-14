
let routes = {}

let vgwTelemetry = {}

let awsVpnConnection =
  { static_routes_only = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , transit_gateway_id = None Text
  , tunnel1_inside_cidr = None Text
  , tunnel1_preshared_key = None Text
  , tunnel2_inside_cidr = None Text
  , tunnel2_preshared_key = None Text
  , vpn_gateway_id = None Text
  , routes = None (List (../dhall/aws_vpn_connection.dhall).Routes)
  , vgw_telemetry = None (List (../dhall/aws_vpn_connection.dhall).VgwTelemetry)
  }

in
{ awsVpnConnection = awsVpnConnection
}
