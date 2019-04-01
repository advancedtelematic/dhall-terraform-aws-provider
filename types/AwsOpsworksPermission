
let AwsOpsworksPermissionOptional =
  { allow_ssh : Optional Bool
  , allow_sudo : Optional Bool
  , level : Optional Text
  , stack_id : Optional Text
  }

let AwsOpsworksPermissionRequired =
  { user_arn : Text }
let AwsOpsworksPermission = AwsOpsworksPermissionOptional //\\ AwsOpsworksPermissionRequired

in
{ AwsOpsworksPermissionOptional = AwsOpsworksPermissionOptional
, AwsOpsworksPermissionRequired = AwsOpsworksPermissionRequired
, AwsOpsworksPermission = AwsOpsworksPermission
}
