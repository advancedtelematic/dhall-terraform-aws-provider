
let AwsOpsworksUserProfileOptional =
  { allow_self_management : Optional Bool
  , ssh_public_key : Optional Text
  }

let AwsOpsworksUserProfileRequired =
  { ssh_username : Text
  , user_arn : Text
  }
let AwsOpsworksUserProfile = AwsOpsworksUserProfileOptional //\\ AwsOpsworksUserProfileRequired

in
{ AwsOpsworksUserProfileOptional = AwsOpsworksUserProfileOptional
, AwsOpsworksUserProfileRequired = AwsOpsworksUserProfileRequired
, AwsOpsworksUserProfile = AwsOpsworksUserProfile
}
