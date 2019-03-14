
let awsDmsReplicationInstance =
  { allocated_storage = None Natural
  , apply_immediately = None Bool
  , auto_minor_version_upgrade = None Bool
  , availability_zone = None Text
  , engine_version = None Text
  , kms_key_arn = None Text
  , multi_az = None Bool
  , preferred_maintenance_window = None Text
  , publicly_accessible = None Bool
  , replication_subnet_group_id = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , vpc_security_group_ids = None (List Text)
  }

in
{ awsDmsReplicationInstance = awsDmsReplicationInstance
}
