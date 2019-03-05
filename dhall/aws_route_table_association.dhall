
let AwsRouteTableAssociationOptional = {}

let AwsRouteTableAssociationRequired =
  { route_table_id: Text
  , subnet_id: Text
  }
let AwsRouteTableAssociation = AwsRouteTableAssociationOptional //\\ AwsRouteTableAssociationRequired

in
{ AwsRouteTableAssociation = AwsRouteTableAssociation
}
