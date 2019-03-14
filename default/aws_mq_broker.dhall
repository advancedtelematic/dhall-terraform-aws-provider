
let configuration =
  { id = None Text
  , revision = None Natural
  }

let instances = {}

let logs =
  { audit = None Bool
  , general = None Bool
  }

let maintenanceWindowStartTime = {}

let user =
  { console_access = None Bool
  , groups = None (List Text)
  }

let awsMqBroker =
  { apply_immediately = None Bool
  , auto_minor_version_upgrade = None Bool
  , deployment_mode = None Text
  , publicly_accessible = None Bool
  , subnet_ids = None (List Text)
  , tags = None (List { mapKey : Text, mapValue : Text })
  , configuration = None (../dhall/aws_mq_broker.dhall).Configuration
  , instances = None (List (../dhall/aws_mq_broker.dhall).Instances)
  , logs = None (../dhall/aws_mq_broker.dhall).Logs
  , maintenance_window_start_time = None (../dhall/aws_mq_broker.dhall).MaintenanceWindowStartTime
  }

in
{ awsMqBroker = awsMqBroker
, user = user
, logs = logs
, configuration = configuration
}
