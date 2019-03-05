
let AwsDocdbClusterInstanceOptional =
  { apply_immediately: Optional Bool
  , arn: Optional Text
  , auto_minor_version_upgrade: Optional Bool
  , availability_zone: Optional Text
  , db_subnet_group_name: Optional Text
  , dbi_resource_id: Optional Text
  , endpoint: Optional Text
  , engine: Optional Text
  , engine_version: Optional Text
  , identifier: Optional Text
  , identifier_prefix: Optional Text
  , kms_key_id: Optional Text
  , port: Optional Natural
  , preferred_backup_window: Optional Text
  , preferred_maintenance_window: Optional Text
  , promotion_tier: Optional Natural
  , publicly_accessible: Optional Bool
  , storage_encrypted: Optional Bool
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , writer: Optional Bool
  }

let AwsDocdbClusterInstanceRequired =
  { cluster_identifier: Text
  , instance_class: Text
  }
let AwsDocdbClusterInstance = AwsDocdbClusterInstanceOptional //\\ AwsDocdbClusterInstanceRequired

in
{ AwsDocdbClusterInstanceOptional = AwsDocdbClusterInstanceOptional
, AwsDocdbClusterInstanceRequired = AwsDocdbClusterInstanceRequired
, AwsDocdbClusterInstance = AwsDocdbClusterInstance
}
