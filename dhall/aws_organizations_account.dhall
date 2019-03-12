
let AwsOrganizationsAccountOptional =
  { iam_user_access_to_billing : Optional Text
  , role_name : Optional Text
  }

let AwsOrganizationsAccountRequired =
  { email : Text
  , name : Text
  }
let AwsOrganizationsAccount = AwsOrganizationsAccountOptional //\\ AwsOrganizationsAccountRequired

in
{ AwsOrganizationsAccountOptional = AwsOrganizationsAccountOptional
, AwsOrganizationsAccountRequired = AwsOrganizationsAccountRequired
, AwsOrganizationsAccount = AwsOrganizationsAccount
}
