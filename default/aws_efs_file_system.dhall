
let awsEfsFileSystem =
  { creation_token = None Text
  , encrypted = None Bool
  , kms_key_id = None Text
  , performance_mode = None Text
  , provisioned_throughput_in_mibps = None Natural
  , reference_name = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , throughput_mode = None Text
  }

in
{ awsEfsFileSystem = awsEfsFileSystem
}
