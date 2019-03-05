
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

let AwsVpcPeeringConnectionOptional =
  { accept_status: Optional Text
  , auto_accept: Optional Bool
  , peer_owner_id: Optional Text
  , peer_region: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , accepter: Optional Accepter
  , requester: Optional Requester
  }

let AwsVpcPeeringConnectionRequired =
  { peer_vpc_id: Text
  , vpc_id: Text
  }
let AwsVpcPeeringConnection = AwsVpcPeeringConnectionOptional //\\ AwsVpcPeeringConnectionRequired

in
{ AwsVpcPeeringConnectionOptional = AwsVpcPeeringConnectionOptional
, AwsVpcPeeringConnectionRequired = AwsVpcPeeringConnectionRequired
, AwsVpcPeeringConnection = AwsVpcPeeringConnection
, RequesterOptional = RequesterOptional
, RequesterRequired = RequesterRequired
, Requester = Requester
, AccepterOptional = AccepterOptional
, AccepterRequired = AccepterRequired
, Accepter = Accepter
}
