
let RoutesOptional = {}

let RoutesRequired = {}
let Routes = RoutesOptional //\\ RoutesRequired

let VgwTelemetryOptional = {}

let VgwTelemetryRequired = {}
let VgwTelemetry = VgwTelemetryOptional //\\ VgwTelemetryRequired

let AwsVpnConnectionOptional =
  { static_routes_only : Optional Bool
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , transit_gateway_id : Optional Text
  , tunnel1_inside_cidr : Optional Text
  , tunnel1_preshared_key : Optional Text
  , tunnel2_inside_cidr : Optional Text
  , tunnel2_preshared_key : Optional Text
  , vpn_gateway_id : Optional Text
  , routes : Optional (List Routes)
  , vgw_telemetry : Optional (List VgwTelemetry)
  }

let AwsVpnConnectionRequired =
  { customer_gateway_id : Text
  , type : Text
  }
let AwsVpnConnection = AwsVpnConnectionOptional //\\ AwsVpnConnectionRequired

in
{ AwsVpnConnectionOptional = AwsVpnConnectionOptional
, AwsVpnConnectionRequired = AwsVpnConnectionRequired
, AwsVpnConnection = AwsVpnConnection
, VgwTelemetry = VgwTelemetry
, Routes = Routes
}
