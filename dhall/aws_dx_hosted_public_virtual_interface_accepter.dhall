
let AwsDxHostedPublicVirtualInterfaceAccepterOptional =
  { arn: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDxHostedPublicVirtualInterfaceAccepterRequired =
  { virtual_interface_id: Text }
let AwsDxHostedPublicVirtualInterfaceAccepter = AwsDxHostedPublicVirtualInterfaceAccepterOptional //\\ AwsDxHostedPublicVirtualInterfaceAccepterRequired

in
{ AwsDxHostedPublicVirtualInterfaceAccepterOptional = AwsDxHostedPublicVirtualInterfaceAccepterOptional
, AwsDxHostedPublicVirtualInterfaceAccepterRequired = AwsDxHostedPublicVirtualInterfaceAccepterRequired
, AwsDxHostedPublicVirtualInterfaceAccepter = AwsDxHostedPublicVirtualInterfaceAccepter
}
