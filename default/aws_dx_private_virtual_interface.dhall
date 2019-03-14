
let awsDxPrivateVirtualInterface =
  { amazon_address = None Text
  , bgp_auth_key = None Text
  , customer_address = None Text
  , dx_gateway_id = None Text
  , mtu = None Natural
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpn_gateway_id = None Text
  }

in
{ awsDxPrivateVirtualInterface = awsDxPrivateVirtualInterface
}
