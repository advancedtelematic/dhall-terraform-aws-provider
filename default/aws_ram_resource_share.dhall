
let awsRamResourceShare =
  { allow_external_principals = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsRamResourceShare = awsRamResourceShare
}
