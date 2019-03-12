
let AwsDxBgpPeerOptional =
  { amazon_address : Optional Text
  , bgp_auth_key : Optional Text
  , customer_address : Optional Text
  }

let AwsDxBgpPeerRequired =
  { address_family : Text
  , bgp_asn : Natural
  , virtual_interface_id : Text
  }
let AwsDxBgpPeer = AwsDxBgpPeerOptional //\\ AwsDxBgpPeerRequired

in
{ AwsDxBgpPeerOptional = AwsDxBgpPeerOptional
, AwsDxBgpPeerRequired = AwsDxBgpPeerRequired
, AwsDxBgpPeer = AwsDxBgpPeer
}
