
let AwsDxHostedPrivateVirtualInterfaceOptional =
  { amazon_address: Optional Text
  , arn: Optional Text
  , bgp_auth_key: Optional Text
  , customer_address: Optional Text
  , jumbo_frame_capable: Optional Bool
  , mtu: Optional Natural
  }

let AwsDxHostedPrivateVirtualInterfaceRequired =
  { address_family: Text
  , bgp_asn: Natural
  , connection_id: Text
  , name: Text
  , owner_account_id: Text
  , vlan: Natural
  }
let AwsDxHostedPrivateVirtualInterface = AwsDxHostedPrivateVirtualInterfaceOptional //\\ AwsDxHostedPrivateVirtualInterfaceRequired

in
{ AwsDxHostedPrivateVirtualInterfaceOptional = AwsDxHostedPrivateVirtualInterfaceOptional
, AwsDxHostedPrivateVirtualInterfaceRequired = AwsDxHostedPrivateVirtualInterfaceRequired
, AwsDxHostedPrivateVirtualInterface = AwsDxHostedPrivateVirtualInterface
}
