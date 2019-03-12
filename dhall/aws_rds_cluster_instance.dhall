
let AwsRdsClusterInstanceOptional =
  { apply_immediately : Optional Bool
  , auto_minor_version_upgrade : Optional Bool
  , availability_zone : Optional Text
  , copy_tags_to_snapshot : Optional Bool
  , db_parameter_group_name : Optional Text
  , db_subnet_group_name : Optional Text
  , engine : Optional Text
  , engine_version : Optional Text
  , identifier : Optional Text
  , identifier_prefix : Optional Text
  , monitoring_interval : Optional Natural
  , monitoring_role_arn : Optional Text
  , performance_insights_enabled : Optional Bool
  , performance_insights_kms_key_id : Optional Text
  , preferred_backup_window : Optional Text
  , preferred_maintenance_window : Optional Text
  , promotion_tier : Optional Natural
  , publicly_accessible : Optional Bool
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsRdsClusterInstanceRequired =
  { cluster_identifier : Text
  , instance_class : Text
  }
let AwsRdsClusterInstance = AwsRdsClusterInstanceOptional //\\ AwsRdsClusterInstanceRequired

in
{ AwsRdsClusterInstanceOptional = AwsRdsClusterInstanceOptional
, AwsRdsClusterInstanceRequired = AwsRdsClusterInstanceRequired
, AwsRdsClusterInstance = AwsRdsClusterInstance
}
