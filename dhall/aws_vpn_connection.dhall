
let RoutesOptional =
  { destination_cidr_block: Optional Text
  , source: Optional Text
  , state: Optional Text
  }

let RoutesRequired = {}
let Routes = RoutesOptional //\\ RoutesRequired

let VgwTelemetryOptional =
  { accepted_route_count: Optional Natural
  , last_status_change: Optional Text
  , outside_ip_address: Optional Text
  , status: Optional Text
  , status_message: Optional Text
  }

let VgwTelemetryRequired = {}
let VgwTelemetry = VgwTelemetryOptional //\\ VgwTelemetryRequired

let AwsVpnConnectionOptional =
  { customer_gateway_configuration: Optional Text
  , static_routes_only: Optional Bool
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , transit_gateway_id: Optional Text
  , tunnel1_address: Optional Text
  , tunnel1_bgp_asn: Optional Text
  , tunnel1_bgp_holdtime: Optional Natural
  , tunnel1_cgw_inside_address: Optional Text
  , tunnel1_inside_cidr: Optional Text
  , tunnel1_preshared_key: Optional Text
  , tunnel1_vgw_inside_address: Optional Text
  , tunnel2_address: Optional Text
  , tunnel2_bgp_asn: Optional Text
  , tunnel2_bgp_holdtime: Optional Natural
  , tunnel2_cgw_inside_address: Optional Text
  , tunnel2_inside_cidr: Optional Text
  , tunnel2_preshared_key: Optional Text
  , tunnel2_vgw_inside_address: Optional Text
  , vpn_gateway_id: Optional Text
  , routes: Optional (List Routes)
  , vgw_telemetry: Optional (List VgwTelemetry)
  }

let AwsVpnConnectionRequired =
  { customer_gateway_id: Text
  , type: Text
  }
let AwsVpnConnection = AwsVpnConnectionOptional //\\ AwsVpnConnectionRequired

in
{ AwsVpnConnectionOptional = AwsVpnConnectionOptional
, AwsVpnConnectionRequired = AwsVpnConnectionRequired
, AwsVpnConnection = AwsVpnConnection
, VgwTelemetryOptional = VgwTelemetryOptional
, VgwTelemetryRequired = VgwTelemetryRequired
, VgwTelemetry = VgwTelemetry
, RoutesOptional = RoutesOptional
, RoutesRequired = RoutesRequired
, Routes = Routes
}
