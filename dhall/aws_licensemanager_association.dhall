
let AwsLicensemanagerAssociationOptional = {}

let AwsLicensemanagerAssociationRequired =
  { license_configuration_arn: Text
  , resource_arn: Text
  }
let AwsLicensemanagerAssociation = AwsLicensemanagerAssociationOptional //\\ AwsLicensemanagerAssociationRequired

in
{ AwsLicensemanagerAssociation = AwsLicensemanagerAssociation
}
