
let AwsOrganizationsAccountOptional =
  { arn: Optional Text
  , iam_user_access_to_billing: Optional Text
  , joined_method: Optional Text
  , joined_timestamp: Optional Text
  , role_name: Optional Text
  , status: Optional Text
  }

let AwsOrganizationsAccountRequired =
  { email: Text
  , name: Text
  }
let AwsOrganizationsAccount = AwsOrganizationsAccountOptional //\\ AwsOrganizationsAccountRequired

in
{ AwsOrganizationsAccountOptional = AwsOrganizationsAccountOptional
, AwsOrganizationsAccountRequired = AwsOrganizationsAccountRequired
, AwsOrganizationsAccount = AwsOrganizationsAccount
}
