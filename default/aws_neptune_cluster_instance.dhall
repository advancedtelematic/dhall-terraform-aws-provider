
let awsNeptuneClusterInstance =
  { apply_immediately = None Bool
  , auto_minor_version_upgrade = None Bool
  , availability_zone = None Text
  , engine = None Text
  , engine_version = None Text
  , identifier = None Text
  , identifier_prefix = None Text
  , neptune_parameter_group_name = None Text
  , neptune_subnet_group_name = None Text
  , port = None Natural
  , preferred_backup_window = None Text
  , preferred_maintenance_window = None Text
  , promotion_tier = None Natural
  , publicly_accessible = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsNeptuneClusterInstance = awsNeptuneClusterInstance
}
