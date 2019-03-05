
let AwsRamResourceAssociationOptional = {}

let AwsRamResourceAssociationRequired =
  { resource_arn: Text
  , resource_share_arn: Text
  }
let AwsRamResourceAssociation = AwsRamResourceAssociationOptional //\\ AwsRamResourceAssociationRequired

in
{ AwsRamResourceAssociation = AwsRamResourceAssociation
}
