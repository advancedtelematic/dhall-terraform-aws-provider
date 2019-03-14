
let accepter =
  { allow_classic_link_to_remote_vpc = None Bool
  , allow_remote_vpc_dns_resolution = None Bool
  , allow_vpc_to_remote_classic_link = None Bool
  }

let requester =
  { allow_classic_link_to_remote_vpc = None Bool
  , allow_remote_vpc_dns_resolution = None Bool
  , allow_vpc_to_remote_classic_link = None Bool
  }

let awsVpcPeeringConnection =
  { auto_accept = None Bool
  , peer_owner_id = None Text
  , peer_region = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , accepter = None (../dhall/aws_vpc_peering_connection.dhall).Accepter
  , requester = None (../dhall/aws_vpc_peering_connection.dhall).Requester
  }

in
{ awsVpcPeeringConnection = awsVpcPeeringConnection
, requester = requester
, accepter = accepter
}
