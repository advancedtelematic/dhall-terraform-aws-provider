
let awsIamUser =
  { force_destroy = None Bool
  , path = None Text
  , permissions_boundary = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsIamUser = awsIamUser
}
