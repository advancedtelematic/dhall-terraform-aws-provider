
let AwsKmsKeyOptional =
  { deletion_window_in_days : Optional Natural
  , description : Optional Text
  , enable_key_rotation : Optional Bool
  , is_enabled : Optional Bool
  , key_usage : Optional Text
  , policy : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsKmsKeyRequired = {}
let AwsKmsKey = AwsKmsKeyOptional //\\ AwsKmsKeyRequired

in
{ AwsKmsKeyOptional = AwsKmsKeyOptional
, AwsKmsKeyRequired = AwsKmsKeyRequired
, AwsKmsKey = AwsKmsKey
}
