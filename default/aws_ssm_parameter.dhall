
let awsSsmParameter =
  { allowed_pattern = None Text
  , arn = None Text
  , description = None Text
  , key_id = None Text
  , overwrite = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsSsmParameter = awsSsmParameter
}
