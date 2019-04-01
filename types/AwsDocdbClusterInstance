
let AwsDocdbClusterInstanceOptional =
  { apply_immediately : Optional Bool
  , auto_minor_version_upgrade : Optional Bool
  , availability_zone : Optional Text
  , engine : Optional Text
  , identifier : Optional Text
  , identifier_prefix : Optional Text
  , preferred_maintenance_window : Optional Text
  , promotion_tier : Optional Natural
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDocdbClusterInstanceRequired =
  { cluster_identifier : Text
  , instance_class : Text
  }
let AwsDocdbClusterInstance = AwsDocdbClusterInstanceOptional //\\ AwsDocdbClusterInstanceRequired

in
{ AwsDocdbClusterInstanceOptional = AwsDocdbClusterInstanceOptional
, AwsDocdbClusterInstanceRequired = AwsDocdbClusterInstanceRequired
, AwsDocdbClusterInstance = AwsDocdbClusterInstance
}
