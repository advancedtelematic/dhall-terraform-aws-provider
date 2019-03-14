
let awsRdsClusterInstance =
  { apply_immediately = None Bool
  , auto_minor_version_upgrade = None Bool
  , availability_zone = None Text
  , copy_tags_to_snapshot = None Bool
  , db_parameter_group_name = None Text
  , db_subnet_group_name = None Text
  , engine = None Text
  , engine_version = None Text
  , identifier = None Text
  , identifier_prefix = None Text
  , monitoring_interval = None Natural
  , monitoring_role_arn = None Text
  , performance_insights_enabled = None Bool
  , performance_insights_kms_key_id = None Text
  , preferred_backup_window = None Text
  , preferred_maintenance_window = None Text
  , promotion_tier = None Natural
  , publicly_accessible = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsRdsClusterInstance = awsRdsClusterInstance
}
