
let awsDocdbCluster =
  { apply_immediately = None Bool
  , availability_zones = None (List Text)
  , backup_retention_period = None Natural
  , cluster_identifier = None Text
  , cluster_identifier_prefix = None Text
  , cluster_members = None (List Text)
  , db_cluster_parameter_group_name = None Text
  , db_subnet_group_name = None Text
  , enabled_cloudwatch_logs_exports = None (List Text)
  , engine = None Text
  , engine_version = None Text
  , final_snapshot_identifier = None Text
  , kms_key_id = None Text
  , master_password = None Text
  , master_username = None Text
  , port = None Natural
  , preferred_backup_window = None Text
  , preferred_maintenance_window = None Text
  , skip_final_snapshot = None Bool
  , snapshot_identifier = None Text
  , storage_encrypted = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpc_security_group_ids = None (List Text)
  }

in
{ awsDocdbCluster = awsDocdbCluster
}
