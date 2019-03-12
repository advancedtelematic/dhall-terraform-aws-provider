
let AwsOrganizationsOrganizationOptional =
  { aws_service_access_principals : Optional (List Text)
  , feature_set : Optional Text
  }

let AwsOrganizationsOrganizationRequired = {}
let AwsOrganizationsOrganization = AwsOrganizationsOrganizationOptional //\\ AwsOrganizationsOrganizationRequired

in
{ AwsOrganizationsOrganizationOptional = AwsOrganizationsOrganizationOptional
, AwsOrganizationsOrganizationRequired = AwsOrganizationsOrganizationRequired
, AwsOrganizationsOrganization = AwsOrganizationsOrganization
}
