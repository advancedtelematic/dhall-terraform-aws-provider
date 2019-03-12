
let AwsDmsReplicationInstanceOptional =
  { allocated_storage : Optional Natural
  , apply_immediately : Optional Bool
  , auto_minor_version_upgrade : Optional Bool
  , availability_zone : Optional Text
  , engine_version : Optional Text
  , kms_key_arn : Optional Text
  , multi_az : Optional Bool
  , preferred_maintenance_window : Optional Text
  , publicly_accessible : Optional Bool
  , replication_subnet_group_id : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , vpc_security_group_ids : Optional (List Text)
  }

let AwsDmsReplicationInstanceRequired =
  { replication_instance_class : Text
  , replication_instance_id : Text
  }
let AwsDmsReplicationInstance = AwsDmsReplicationInstanceOptional //\\ AwsDmsReplicationInstanceRequired

in
{ AwsDmsReplicationInstanceOptional = AwsDmsReplicationInstanceOptional
, AwsDmsReplicationInstanceRequired = AwsDmsReplicationInstanceRequired
, AwsDmsReplicationInstance = AwsDmsReplicationInstance
}
