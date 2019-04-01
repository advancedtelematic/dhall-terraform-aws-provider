
let AwsDxPublicVirtualInterfaceOptional =
  { amazon_address : Optional Text
  , bgp_auth_key : Optional Text
  , customer_address : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDxPublicVirtualInterfaceRequired =
  { address_family : Text
  , bgp_asn : Natural
  , connection_id : Text
  , name : Text
  , route_filter_prefixes : (List Text)
  , vlan : Natural
  }
let AwsDxPublicVirtualInterface = AwsDxPublicVirtualInterfaceOptional //\\ AwsDxPublicVirtualInterfaceRequired

in
{ AwsDxPublicVirtualInterfaceOptional = AwsDxPublicVirtualInterfaceOptional
, AwsDxPublicVirtualInterfaceRequired = AwsDxPublicVirtualInterfaceRequired
, AwsDxPublicVirtualInterface = AwsDxPublicVirtualInterface
}
