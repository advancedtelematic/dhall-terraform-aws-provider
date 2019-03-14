
let awsOpsworksPermission =
  { allow_ssh = None Bool
  , allow_sudo = None Bool
  , level = None Text
  , stack_id = None Text
  }

in
{ awsOpsworksPermission = awsOpsworksPermission
}
