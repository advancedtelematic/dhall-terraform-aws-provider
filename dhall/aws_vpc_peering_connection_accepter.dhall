
let AccepterOptional =
  { allow_classic_link_to_remote_vpc: Optional Bool
  , allow_remote_vpc_dns_resolution: Optional Bool
  , allow_vpc_to_remote_classic_link: Optional Bool
  }

let AccepterRequired = {}
let Accepter = AccepterOptional //\\ AccepterRequired

let RequesterOptional =
  { allow_classic_link_to_remote_vpc: Optional Bool
  , allow_remote_vpc_dns_resolution: Optional Bool
  , allow_vpc_to_remote_classic_link: Optional Bool
  }

let RequesterRequired = {}
let Requester = RequesterOptional //\\ RequesterRequired

let AwsVpcPeeringConnectionAccepterOptional =
  { auto_accept: Optional Bool
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , accepter: Optional Accepter
  , requester: Optional Requester
  }

let AwsVpcPeeringConnectionAccepterRequired =
  { vpc_peering_connection_id: Text }
let AwsVpcPeeringConnectionAccepter = AwsVpcPeeringConnectionAccepterOptional //\\ AwsVpcPeeringConnectionAccepterRequired

in
{ AwsVpcPeeringConnectionAccepterOptional = AwsVpcPeeringConnectionAccepterOptional
, AwsVpcPeeringConnectionAccepterRequired = AwsVpcPeeringConnectionAccepterRequired
, AwsVpcPeeringConnectionAccepter = AwsVpcPeeringConnectionAccepter
, RequesterOptional = RequesterOptional
, RequesterRequired = RequesterRequired
, Requester = Requester
, AccepterOptional = AccepterOptional
, AccepterRequired = AccepterRequired
, Accepter = Accepter
}
