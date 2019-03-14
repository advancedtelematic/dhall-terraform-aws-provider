
let awsEbsVolume =
  { encrypted = None Bool
  , iops = None Natural
  , kms_key_id = None Text
  , size = None Natural
  , snapshot_id = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , type = None Text
  }

in
{ awsEbsVolume = awsEbsVolume
}
