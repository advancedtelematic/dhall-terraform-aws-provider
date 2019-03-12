
let S3ImportOptional =
  { bucket_prefix : Optional Text }

let S3ImportRequired =
  { bucket_name : Text
  , ingestion_role : Text
  , source_engine : Text
  , source_engine_version : Text
  }
let S3Import = S3ImportOptional //\\ S3ImportRequired

let ScalingConfigurationOptional =
  { auto_pause : Optional Bool
  , max_capacity : Optional Natural
  , min_capacity : Optional Natural
  , seconds_until_auto_pause : Optional Natural
  }

let ScalingConfigurationRequired = {}
let ScalingConfiguration = ScalingConfigurationOptional //\\ ScalingConfigurationRequired

let AwsRdsClusterOptional =
  { apply_immediately : Optional Bool
  , availability_zones : Optional (List Text)
  , backtrack_window : Optional Natural
  , backup_retention_period : Optional Natural
  , cluster_identifier : Optional Text
  , cluster_identifier_prefix : Optional Text
  , cluster_members : Optional (List Text)
  , database_name : Optional Text
  , db_cluster_parameter_group_name : Optional Text
  , db_subnet_group_name : Optional Text
  , deletion_protection : Optional Bool
  , enabled_cloudwatch_logs_exports : Optional (List Text)
  , engine : Optional Text
  , engine_mode : Optional Text
  , engine_version : Optional Text
  , final_snapshot_identifier : Optional Text
  , global_cluster_identifier : Optional Text
  , iam_database_authentication_enabled : Optional Bool
  , iam_roles : Optional (List Text)
  , kms_key_id : Optional Text
  , master_password : Optional Text
  , master_username : Optional Text
  , port : Optional Natural
  , preferred_backup_window : Optional Text
  , preferred_maintenance_window : Optional Text
  , replication_source_identifier : Optional Text
  , skip_final_snapshot : Optional Bool
  , snapshot_identifier : Optional Text
  , source_region : Optional Text
  , storage_encrypted : Optional Bool
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , vpc_security_group_ids : Optional (List Text)
  , s3_import : Optional S3Import
  , scaling_configuration : Optional ScalingConfiguration
  }

let AwsRdsClusterRequired = {}
let AwsRdsCluster = AwsRdsClusterOptional //\\ AwsRdsClusterRequired

in
{ AwsRdsClusterOptional = AwsRdsClusterOptional
, AwsRdsClusterRequired = AwsRdsClusterRequired
, AwsRdsCluster = AwsRdsCluster
, ScalingConfigurationOptional = ScalingConfigurationOptional
, ScalingConfigurationRequired = ScalingConfigurationRequired
, ScalingConfiguration = ScalingConfiguration
, S3ImportOptional = S3ImportOptional
, S3ImportRequired = S3ImportRequired
, S3Import = S3Import
}
