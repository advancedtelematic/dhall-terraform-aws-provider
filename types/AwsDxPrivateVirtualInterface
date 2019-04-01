
let AwsDxPrivateVirtualInterfaceOptional =
  { amazon_address : Optional Text
  , bgp_auth_key : Optional Text
  , customer_address : Optional Text
  , dx_gateway_id : Optional Text
  , mtu : Optional Natural
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , vpn_gateway_id : Optional Text
  }

let AwsDxPrivateVirtualInterfaceRequired =
  { address_family : Text
  , bgp_asn : Natural
  , connection_id : Text
  , name : Text
  , vlan : Natural
  }
let AwsDxPrivateVirtualInterface = AwsDxPrivateVirtualInterfaceOptional //\\ AwsDxPrivateVirtualInterfaceRequired

in
{ AwsDxPrivateVirtualInterfaceOptional = AwsDxPrivateVirtualInterfaceOptional
, AwsDxPrivateVirtualInterfaceRequired = AwsDxPrivateVirtualInterfaceRequired
, AwsDxPrivateVirtualInterface = AwsDxPrivateVirtualInterface
}
