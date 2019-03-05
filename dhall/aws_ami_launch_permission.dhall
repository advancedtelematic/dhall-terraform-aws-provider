
let AwsAmiLaunchPermissionOptional = {}

let AwsAmiLaunchPermissionRequired =
  { account_id: Text
  , image_id: Text
  }
let AwsAmiLaunchPermission = AwsAmiLaunchPermissionOptional //\\ AwsAmiLaunchPermissionRequired

in
{ AwsAmiLaunchPermission = AwsAmiLaunchPermission
}
