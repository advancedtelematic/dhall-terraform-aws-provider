
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

let awsVpcPeeringConnectionAccepter =
  { auto_accept = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , accepter = None (../dhall/aws_vpc_peering_connection_accepter.dhall).Accepter
  , requester = None (../dhall/aws_vpc_peering_connection_accepter.dhall).Requester
  }

in
{ awsVpcPeeringConnectionAccepter = awsVpcPeeringConnectionAccepter
, requester = requester
, accepter = accepter
}
