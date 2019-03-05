
let AwsRoute53ZoneAssociationOptional =
  { vpc_region: Optional Text }

let AwsRoute53ZoneAssociationRequired =
  { vpc_id: Text
  , zone_id: Text
  }
let AwsRoute53ZoneAssociation = AwsRoute53ZoneAssociationOptional //\\ AwsRoute53ZoneAssociationRequired

in
{ AwsRoute53ZoneAssociationOptional = AwsRoute53ZoneAssociationOptional
, AwsRoute53ZoneAssociationRequired = AwsRoute53ZoneAssociationRequired
, AwsRoute53ZoneAssociation = AwsRoute53ZoneAssociation
}
