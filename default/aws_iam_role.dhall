
let awsIamRole =
  { description = None Text
  , force_detach_policies = None Bool
  , max_session_duration = None Natural
  , name = None Text
  , name_prefix = None Text
  , path = None Text
  , permissions_boundary = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsIamRole = awsIamRole
}
