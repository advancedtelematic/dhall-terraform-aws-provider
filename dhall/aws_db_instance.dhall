
let S3ImportOptional =
  { bucket_prefix : Optional Text }

let S3ImportRequired =
  { bucket_name : Text
  , ingestion_role : Text
  , source_engine : Text
  , source_engine_version : Text
  }
let S3Import = S3ImportOptional //\\ S3ImportRequired

let AwsDbInstanceOptional =
  { allocated_storage : Optional Natural
  , allow_major_version_upgrade : Optional Bool
  , apply_immediately : Optional Bool
  , auto_minor_version_upgrade : Optional Bool
  , availability_zone : Optional Text
  , backup_retention_period : Optional Natural
  , backup_window : Optional Text
  , character_set_name : Optional Text
  , copy_tags_to_snapshot : Optional Bool
  , db_subnet_group_name : Optional Text
  , deletion_protection : Optional Bool
  , domain : Optional Text
  , domain_iam_role_name : Optional Text
  , enabled_cloudwatch_logs_exports : Optional (List Text)
  , engine : Optional Text
  , engine_version : Optional Text
  , final_snapshot_identifier : Optional Text
  , iam_database_authentication_enabled : Optional Bool
  , identifier : Optional Text
  , identifier_prefix : Optional Text
  , iops : Optional Natural
  , kms_key_id : Optional Text
  , license_model : Optional Text
  , maintenance_window : Optional Text
  , monitoring_interval : Optional Natural
  , monitoring_role_arn : Optional Text
  , multi_az : Optional Bool
  , name : Optional Text
  , option_group_name : Optional Text
  , parameter_group_name : Optional Text
  , password : Optional Text
  , port : Optional Natural
  , publicly_accessible : Optional Bool
  , replicate_source_db : Optional Text
  , security_group_names : Optional (List Text)
  , skip_final_snapshot : Optional Bool
  , snapshot_identifier : Optional Text
  , storage_encrypted : Optional Bool
  , storage_type : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , timezone : Optional Text
  , username : Optional Text
  , vpc_security_group_ids : Optional (List Text)
  , s3_import : Optional S3Import
  }

let AwsDbInstanceRequired =
  { instance_class : Text }
let AwsDbInstance = AwsDbInstanceOptional //\\ AwsDbInstanceRequired

in
{ AwsDbInstanceOptional = AwsDbInstanceOptional
, AwsDbInstanceRequired = AwsDbInstanceRequired
, AwsDbInstance = AwsDbInstance
, S3ImportOptional = S3ImportOptional
, S3ImportRequired = S3ImportRequired
, S3Import = S3Import
}
