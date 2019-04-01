
let AwsStoragegatewaySmbFileShareOptional =
  { authentication : Optional Text
  , default_storage_class : Optional Text
  , guess_mime_type_enabled : Optional Bool
  , invalid_user_list : Optional (List Text)
  , kms_encrypted : Optional Bool
  , kms_key_arn : Optional Text
  , object_acl : Optional Text
  , read_only : Optional Bool
  , requester_pays : Optional Bool
  , valid_user_list : Optional (List Text)
  }

let AwsStoragegatewaySmbFileShareRequired =
  { gateway_arn : Text
  , location_arn : Text
  , role_arn : Text
  }
let AwsStoragegatewaySmbFileShare = AwsStoragegatewaySmbFileShareOptional //\\ AwsStoragegatewaySmbFileShareRequired

in
{ AwsStoragegatewaySmbFileShareOptional = AwsStoragegatewaySmbFileShareOptional
, AwsStoragegatewaySmbFileShareRequired = AwsStoragegatewaySmbFileShareRequired
, AwsStoragegatewaySmbFileShare = AwsStoragegatewaySmbFileShare
}
