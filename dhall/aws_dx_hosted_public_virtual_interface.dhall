
let AwsDxHostedPublicVirtualInterfaceOptional =
  { amazon_address: Optional Text
  , arn: Optional Text
  , bgp_auth_key: Optional Text
  , customer_address: Optional Text
  }

let AwsDxHostedPublicVirtualInterfaceRequired =
  { address_family: Text
  , bgp_asn: Natural
  , connection_id: Text
  , name: Text
  , owner_account_id: Text
  , route_filter_prefixes: (List Text)
  , vlan: Natural
  }
let AwsDxHostedPublicVirtualInterface = AwsDxHostedPublicVirtualInterfaceOptional //\\ AwsDxHostedPublicVirtualInterfaceRequired

in
{ AwsDxHostedPublicVirtualInterfaceOptional = AwsDxHostedPublicVirtualInterfaceOptional
, AwsDxHostedPublicVirtualInterfaceRequired = AwsDxHostedPublicVirtualInterfaceRequired
, AwsDxHostedPublicVirtualInterface = AwsDxHostedPublicVirtualInterface
}
