
let awsCloudwatchLogGroup =
  { kms_key_id = None Text
  , name = None Text
  , name_prefix = None Text
  , retention_in_days = None Natural
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsCloudwatchLogGroup = awsCloudwatchLogGroup
}
