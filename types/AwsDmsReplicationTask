
let AwsDmsReplicationTaskOptional =
  { cdc_start_time : Optional Text
  , replication_task_settings : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDmsReplicationTaskRequired =
  { migration_type : Text
  , replication_instance_arn : Text
  , replication_task_id : Text
  , source_endpoint_arn : Text
  , table_mappings : Text
  , target_endpoint_arn : Text
  }
let AwsDmsReplicationTask = AwsDmsReplicationTaskOptional //\\ AwsDmsReplicationTaskRequired

in
{ AwsDmsReplicationTaskOptional = AwsDmsReplicationTaskOptional
, AwsDmsReplicationTaskRequired = AwsDmsReplicationTaskRequired
, AwsDmsReplicationTask = AwsDmsReplicationTask
}
