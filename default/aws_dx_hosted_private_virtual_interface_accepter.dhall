
let awsDxHostedPrivateVirtualInterfaceAccepter =
  { dx_gateway_id = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpn_gateway_id = None Text
  }

in
{ awsDxHostedPrivateVirtualInterfaceAccepter = awsDxHostedPrivateVirtualInterfaceAccepter
}
