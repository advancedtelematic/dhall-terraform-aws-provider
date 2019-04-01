
let AwsNeptuneClusterInstanceOptional =
  { apply_immediately : Optional Bool
  , auto_minor_version_upgrade : Optional Bool
  , availability_zone : Optional Text
  , engine : Optional Text
  , engine_version : Optional Text
  , identifier : Optional Text
  , identifier_prefix : Optional Text
  , neptune_parameter_group_name : Optional Text
  , neptune_subnet_group_name : Optional Text
  , port : Optional Natural
  , preferred_backup_window : Optional Text
  , preferred_maintenance_window : Optional Text
  , promotion_tier : Optional Natural
  , publicly_accessible : Optional Bool
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsNeptuneClusterInstanceRequired =
  { cluster_identifier : Text
  , instance_class : Text
  }
let AwsNeptuneClusterInstance = AwsNeptuneClusterInstanceOptional //\\ AwsNeptuneClusterInstanceRequired

in
{ AwsNeptuneClusterInstanceOptional = AwsNeptuneClusterInstanceOptional
, AwsNeptuneClusterInstanceRequired = AwsNeptuneClusterInstanceRequired
, AwsNeptuneClusterInstance = AwsNeptuneClusterInstance
}
