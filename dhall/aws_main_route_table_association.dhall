
let AwsMainRouteTableAssociationOptional = {}

let AwsMainRouteTableAssociationRequired =
  { route_table_id: Text
  , vpc_id: Text
  }
let AwsMainRouteTableAssociation = AwsMainRouteTableAssociationOptional //\\ AwsMainRouteTableAssociationRequired

in
{ AwsMainRouteTableAssociation = AwsMainRouteTableAssociation
}
