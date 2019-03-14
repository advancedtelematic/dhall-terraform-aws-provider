
let awsEfsMountTarget =
  { ip_address = None Text
  , security_groups = None (List Text)
  }

in
{ awsEfsMountTarget = awsEfsMountTarget
}
