
let AwsVpcEndpointSubnetAssociationOptional = {}

let AwsVpcEndpointSubnetAssociationRequired =
  { subnet_id: Text
  , vpc_endpoint_id: Text
  }
let AwsVpcEndpointSubnetAssociation = AwsVpcEndpointSubnetAssociationOptional //\\ AwsVpcEndpointSubnetAssociationRequired

in
{ AwsVpcEndpointSubnetAssociation = AwsVpcEndpointSubnetAssociation
}
