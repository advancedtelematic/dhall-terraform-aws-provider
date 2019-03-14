
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

let awsVpcPeeringConnectionOptions =
  { accepter = None (../dhall/aws_vpc_peering_connection_options.dhall).Accepter
  , requester = None (../dhall/aws_vpc_peering_connection_options.dhall).Requester
  }

in
{ awsVpcPeeringConnectionOptions = awsVpcPeeringConnectionOptions
, requester = requester
, accepter = accepter
}
