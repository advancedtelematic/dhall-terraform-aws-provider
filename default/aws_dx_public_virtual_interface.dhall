
let awsDxPublicVirtualInterface =
  { amazon_address = None Text
  , bgp_auth_key = None Text
  , customer_address = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDxPublicVirtualInterface = awsDxPublicVirtualInterface
}
