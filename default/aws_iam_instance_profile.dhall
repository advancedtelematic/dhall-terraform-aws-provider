
let awsIamInstanceProfile =
  { name = None Text
  , name_prefix = None Text
  , path = None Text
  , role = None Text
  , roles = None (List Text)
  }

in
{ awsIamInstanceProfile = awsIamInstanceProfile
}
