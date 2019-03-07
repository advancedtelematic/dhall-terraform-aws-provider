
let AwsDocdbClusterOptional =
  { apply_immediately: Optional Bool
  , availability_zones: Optional (List Text)
  , backup_retention_period: Optional Natural
  , cluster_identifier: Optional Text
  , cluster_identifier_prefix: Optional Text
  , cluster_members: Optional (List Text)
  , db_cluster_parameter_group_name: Optional Text
  , db_subnet_group_name: Optional Text
  , enabled_cloudwatch_logs_exports: Optional (List Text)
  , engine: Optional Text
  , engine_version: Optional Text
  , final_snapshot_identifier: Optional Text
  , kms_key_id: Optional Text
  , master_password: Optional Text
  , master_username: Optional Text
  , port: Optional Natural
  , preferred_backup_window: Optional Text
  , preferred_maintenance_window: Optional Text
  , skip_final_snapshot: Optional Bool
  , snapshot_identifier: Optional Text
  , storage_encrypted: Optional Bool
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , vpc_security_group_ids: Optional (List Text)
  }

let AwsDocdbClusterRequired = {}
let AwsDocdbCluster = AwsDocdbClusterOptional //\\ AwsDocdbClusterRequired

in
{ AwsDocdbClusterOptional = AwsDocdbClusterOptional
, AwsDocdbClusterRequired = AwsDocdbClusterRequired
, AwsDocdbCluster = AwsDocdbCluster
}
