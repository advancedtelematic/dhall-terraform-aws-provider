
let awsDmsReplicationTask =
  { cdc_start_time = None Text
  , replication_task_settings = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDmsReplicationTask = awsDmsReplicationTask
}
