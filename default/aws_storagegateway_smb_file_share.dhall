
let awsStoragegatewaySmbFileShare =
  { authentication = None Text
  , default_storage_class = None Text
  , guess_mime_type_enabled = None Bool
  , invalid_user_list = None (List Text)
  , kms_encrypted = None Bool
  , kms_key_arn = None Text
  , object_acl = None Text
  , read_only = None Bool
  , requester_pays = None Bool
  , valid_user_list = None (List Text)
  }

in
{ awsStoragegatewaySmbFileShare = awsStoragegatewaySmbFileShare
}
