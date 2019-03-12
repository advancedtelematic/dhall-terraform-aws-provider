
let NfsFileShareDefaultsOptional =
  { directory_mode : Optional Text
  , file_mode : Optional Text
  , group_id : Optional Natural
  , owner_id : Optional Natural
  }

let NfsFileShareDefaultsRequired = {}
let NfsFileShareDefaults = NfsFileShareDefaultsOptional //\\ NfsFileShareDefaultsRequired

let AwsStoragegatewayNfsFileShareOptional =
  { default_storage_class : Optional Text
  , guess_mime_type_enabled : Optional Bool
  , kms_encrypted : Optional Bool
  , kms_key_arn : Optional Text
  , object_acl : Optional Text
  , read_only : Optional Bool
  , requester_pays : Optional Bool
  , squash : Optional Text
  , nfs_file_share_defaults : Optional NfsFileShareDefaults
  }

let AwsStoragegatewayNfsFileShareRequired =
  { client_list : (List Text)
  , gateway_arn : Text
  , location_arn : Text
  , role_arn : Text
  }
let AwsStoragegatewayNfsFileShare = AwsStoragegatewayNfsFileShareOptional //\\ AwsStoragegatewayNfsFileShareRequired

in
{ AwsStoragegatewayNfsFileShareOptional = AwsStoragegatewayNfsFileShareOptional
, AwsStoragegatewayNfsFileShareRequired = AwsStoragegatewayNfsFileShareRequired
, AwsStoragegatewayNfsFileShare = AwsStoragegatewayNfsFileShare
, NfsFileShareDefaultsOptional = NfsFileShareDefaultsOptional
, NfsFileShareDefaultsRequired = NfsFileShareDefaultsRequired
, NfsFileShareDefaults = NfsFileShareDefaults
}
