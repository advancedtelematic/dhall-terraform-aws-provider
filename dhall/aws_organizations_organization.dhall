
let AwsOrganizationsOrganizationOptional =
  { arn: Optional Text
  , aws_service_access_principals: Optional (List Text)
  , feature_set: Optional Text
  , master_account_arn: Optional Text
  , master_account_email: Optional Text
  , master_account_id: Optional Text
  }

let AwsOrganizationsOrganizationRequired = {}
let AwsOrganizationsOrganization = AwsOrganizationsOrganizationOptional //\\ AwsOrganizationsOrganizationRequired

in
{ AwsOrganizationsOrganizationOptional = AwsOrganizationsOrganizationOptional
, AwsOrganizationsOrganizationRequired = AwsOrganizationsOrganizationRequired
, AwsOrganizationsOrganization = AwsOrganizationsOrganization
}
