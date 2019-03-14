
let nfsFileShareDefaults =
  { directory_mode = None Text
  , file_mode = None Text
  , group_id = None Natural
  , owner_id = None Natural
  }

let awsStoragegatewayNfsFileShare =
  { default_storage_class = None Text
  , guess_mime_type_enabled = None Bool
  , kms_encrypted = None Bool
  , kms_key_arn = None Text
  , object_acl = None Text
  , read_only = None Bool
  , requester_pays = None Bool
  , squash = None Text
  , nfs_file_share_defaults = None (../dhall/aws_storagegateway_nfs_file_share.dhall).NfsFileShareDefaults
  }

in
{ awsStoragegatewayNfsFileShare = awsStoragegatewayNfsFileShare
, nfsFileShareDefaults = nfsFileShareDefaults
}
