
let AwsOrganizationsPolicyOptional =
  { description : Optional Text
  , type : Optional Text
  }

let AwsOrganizationsPolicyRequired =
  { content : Text
  , name : Text
  }
let AwsOrganizationsPolicy = AwsOrganizationsPolicyOptional //\\ AwsOrganizationsPolicyRequired

in
{ AwsOrganizationsPolicyOptional = AwsOrganizationsPolicyOptional
, AwsOrganizationsPolicyRequired = AwsOrganizationsPolicyRequired
, AwsOrganizationsPolicy = AwsOrganizationsPolicy
}
