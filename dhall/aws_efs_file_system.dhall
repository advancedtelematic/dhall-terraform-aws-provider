
let AwsEfsFileSystemOptional =
  { creation_token : Optional Text
  , encrypted : Optional Bool
  , kms_key_id : Optional Text
  , performance_mode : Optional Text
  , provisioned_throughput_in_mibps : Optional Natural
  , reference_name : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , throughput_mode : Optional Text
  }

let AwsEfsFileSystemRequired = {}
let AwsEfsFileSystem = AwsEfsFileSystemOptional //\\ AwsEfsFileSystemRequired

in
{ AwsEfsFileSystemOptional = AwsEfsFileSystemOptional
, AwsEfsFileSystemRequired = AwsEfsFileSystemRequired
, AwsEfsFileSystem = AwsEfsFileSystem
}
