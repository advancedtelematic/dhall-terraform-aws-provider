
let awsDocdbClusterInstance =
  { apply_immediately = None Bool
  , auto_minor_version_upgrade = None Bool
  , availability_zone = None Text
  , engine = None Text
  , identifier = None Text
  , identifier_prefix = None Text
  , preferred_maintenance_window = None Text
  , promotion_tier = None Natural
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDocdbClusterInstance = awsDocdbClusterInstance
}
