
let s3Import =
  { bucket_prefix = None Text }

let scalingConfiguration =
  { auto_pause = None Bool
  , max_capacity = None Natural
  , min_capacity = None Natural
  , seconds_until_auto_pause = None Natural
  }

let awsRdsCluster =
  { apply_immediately = None Bool
  , availability_zones = None (List Text)
  , backtrack_window = None Natural
  , backup_retention_period = None Natural
  , cluster_identifier = None Text
  , cluster_identifier_prefix = None Text
  , cluster_members = None (List Text)
  , database_name = None Text
  , db_cluster_parameter_group_name = None Text
  , db_subnet_group_name = None Text
  , deletion_protection = None Bool
  , enabled_cloudwatch_logs_exports = None (List Text)
  , engine = None Text
  , engine_mode = None Text
  , engine_version = None Text
  , final_snapshot_identifier = None Text
  , global_cluster_identifier = None Text
  , iam_database_authentication_enabled = None Bool
  , iam_roles = None (List Text)
  , kms_key_id = None Text
  , master_password = None Text
  , master_username = None Text
  , port = None Natural
  , preferred_backup_window = None Text
  , preferred_maintenance_window = None Text
  , replication_source_identifier = None Text
  , skip_final_snapshot = None Bool
  , snapshot_identifier = None Text
  , source_region = None Text
  , storage_encrypted = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpc_security_group_ids = None (List Text)
  , s3_import = None (../dhall/aws_rds_cluster.dhall).S3Import
  , scaling_configuration = None (../dhall/aws_rds_cluster.dhall).ScalingConfiguration
  }

in
{ awsRdsCluster = awsRdsCluster
, scalingConfiguration = scalingConfiguration
, s3Import = s3Import
}
