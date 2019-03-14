
let awsNeptuneCluster =
  { apply_immediately = None Bool
  , availability_zones = None (List Text)
  , backup_retention_period = None Natural
  , cluster_identifier = None Text
  , cluster_identifier_prefix = None Text
  , engine = None Text
  , engine_version = None Text
  , final_snapshot_identifier = None Text
  , iam_database_authentication_enabled = None Bool
  , iam_roles = None (List Text)
  , kms_key_arn = None Text
  , neptune_cluster_parameter_group_name = None Text
  , neptune_subnet_group_name = None Text
  , port = None Natural
  , preferred_backup_window = None Text
  , preferred_maintenance_window = None Text
  , replication_source_identifier = None Text
  , skip_final_snapshot = None Bool
  , snapshot_identifier = None Text
  , storage_encrypted = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpc_security_group_ids = None (List Text)
  }

in
{ awsNeptuneCluster = awsNeptuneCluster
}
