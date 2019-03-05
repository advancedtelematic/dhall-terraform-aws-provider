
let AwsVpcEndpointRouteTableAssociationOptional = {}

let AwsVpcEndpointRouteTableAssociationRequired =
  { route_table_id: Text
  , vpc_endpoint_id: Text
  }
let AwsVpcEndpointRouteTableAssociation = AwsVpcEndpointRouteTableAssociationOptional //\\ AwsVpcEndpointRouteTableAssociationRequired

in
{ AwsVpcEndpointRouteTableAssociation = AwsVpcEndpointRouteTableAssociation
}
