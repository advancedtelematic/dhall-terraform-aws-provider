
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

let AwsVpcPeeringConnectionOptionsOptional =
  { accepter: Optional Accepter
  , requester: Optional Requester
  }

let AwsVpcPeeringConnectionOptionsRequired =
  { vpc_peering_connection_id: Text }
let AwsVpcPeeringConnectionOptions = AwsVpcPeeringConnectionOptionsOptional //\\ AwsVpcPeeringConnectionOptionsRequired

in
{ AwsVpcPeeringConnectionOptionsOptional = AwsVpcPeeringConnectionOptionsOptional
, AwsVpcPeeringConnectionOptionsRequired = AwsVpcPeeringConnectionOptionsRequired
, AwsVpcPeeringConnectionOptions = AwsVpcPeeringConnectionOptions
, RequesterOptional = RequesterOptional
, RequesterRequired = RequesterRequired
, Requester = Requester
, AccepterOptional = AccepterOptional
, AccepterRequired = AccepterRequired
, Accepter = Accepter
}
