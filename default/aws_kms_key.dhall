
let awsKmsKey =
  { deletion_window_in_days = None Natural
  , description = None Text
  , enable_key_rotation = None Bool
  , is_enabled = None Bool
  , key_usage = None Text
  , policy = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsKmsKey = awsKmsKey
}
