
let AwsMainRouteTableAssociationOptional =
  { original_route_table_id: Optional Text }

let AwsMainRouteTableAssociationRequired =
  { route_table_id: Text
  , vpc_id: Text
  }
let AwsMainRouteTableAssociation = AwsMainRouteTableAssociationOptional //\\ AwsMainRouteTableAssociationRequired

in
{ AwsMainRouteTableAssociationOptional = AwsMainRouteTableAssociationOptional
, AwsMainRouteTableAssociationRequired = AwsMainRouteTableAssociationRequired
, AwsMainRouteTableAssociation = AwsMainRouteTableAssociation
}
