
let AwsDxHostedPrivateVirtualInterfaceAccepterOptional =
  { dx_gateway_id: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , vpn_gateway_id: Optional Text
  }

let AwsDxHostedPrivateVirtualInterfaceAccepterRequired =
  { virtual_interface_id: Text }
let AwsDxHostedPrivateVirtualInterfaceAccepter = AwsDxHostedPrivateVirtualInterfaceAccepterOptional //\\ AwsDxHostedPrivateVirtualInterfaceAccepterRequired

in
{ AwsDxHostedPrivateVirtualInterfaceAccepterOptional = AwsDxHostedPrivateVirtualInterfaceAccepterOptional
, AwsDxHostedPrivateVirtualInterfaceAccepterRequired = AwsDxHostedPrivateVirtualInterfaceAccepterRequired
, AwsDxHostedPrivateVirtualInterfaceAccepter = AwsDxHostedPrivateVirtualInterfaceAccepter
}
