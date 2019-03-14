
let s3Import =
  { bucket_prefix = None Text }

let awsDbInstance =
  { allocated_storage = None Natural
  , allow_major_version_upgrade = None Bool
  , apply_immediately = None Bool
  , auto_minor_version_upgrade = None Bool
  , availability_zone = None Text
  , backup_retention_period = None Natural
  , backup_window = None Text
  , character_set_name = None Text
  , copy_tags_to_snapshot = None Bool
  , db_subnet_group_name = None Text
  , deletion_protection = None Bool
  , domain = None Text
  , domain_iam_role_name = None Text
  , enabled_cloudwatch_logs_exports = None (List Text)
  , engine = None Text
  , engine_version = None Text
  , final_snapshot_identifier = None Text
  , iam_database_authentication_enabled = None Bool
  , identifier = None Text
  , identifier_prefix = None Text
  , iops = None Natural
  , kms_key_id = None Text
  , license_model = None Text
  , maintenance_window = None Text
  , monitoring_interval = None Natural
  , monitoring_role_arn = None Text
  , multi_az = None Bool
  , name = None Text
  , option_group_name = None Text
  , parameter_group_name = None Text
  , password = None Text
  , port = None Natural
  , publicly_accessible = None Bool
  , replicate_source_db = None Text
  , security_group_names = None (List Text)
  , skip_final_snapshot = None Bool
  , snapshot_identifier = None Text
  , storage_encrypted = None Bool
  , storage_type = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , timezone = None Text
  , username = None Text
  , vpc_security_group_ids = None (List Text)
  , s3_import = None (../dhall/aws_db_instance.dhall).S3Import
  }

in
{ awsDbInstance = awsDbInstance
, s3Import = s3Import
}
