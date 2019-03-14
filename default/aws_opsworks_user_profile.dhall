
let awsOpsworksUserProfile =
  { allow_self_management = None Bool
  , ssh_public_key = None Text
  }

in
{ awsOpsworksUserProfile = awsOpsworksUserProfile
}
