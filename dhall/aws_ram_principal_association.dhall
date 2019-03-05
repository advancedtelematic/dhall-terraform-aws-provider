
let AwsRamPrincipalAssociationOptional = {}

let AwsRamPrincipalAssociationRequired =
  { principal: Text
  , resource_share_arn: Text
  }
let AwsRamPrincipalAssociation = AwsRamPrincipalAssociationOptional //\\ AwsRamPrincipalAssociationRequired

in
{ AwsRamPrincipalAssociation = AwsRamPrincipalAssociation
}
