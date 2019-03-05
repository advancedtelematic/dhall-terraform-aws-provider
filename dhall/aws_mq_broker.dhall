
let ConfigurationOptional =
  { id: Optional Text
  , revision: Optional Natural
  }

let ConfigurationRequired = {}
let Configuration = ConfigurationOptional //\\ ConfigurationRequired

let InstancesOptional =
  { console_url: Optional Text
  , endpoints: Optional (List Text)
  , ip_address: Optional Text
  }

let InstancesRequired = {}
let Instances = InstancesOptional //\\ InstancesRequired

let LogsOptional =
  { audit: Optional Bool
  , general: Optional Bool
  }

let LogsRequired = {}
let Logs = LogsOptional //\\ LogsRequired

let MaintenanceWindowStartTimeOptional = {}

let MaintenanceWindowStartTimeRequired =
  { day_of_week: Text
  , time_of_day: Text
  , time_zone: Text
  }
let MaintenanceWindowStartTime = MaintenanceWindowStartTimeOptional //\\ MaintenanceWindowStartTimeRequired

let UserOptional =
  { console_access: Optional Bool
  , groups: Optional (List Text)
  }

let UserRequired =
  { password: Text
  , username: Text
  }
let User = UserOptional //\\ UserRequired

let AwsMqBrokerOptional =
  { apply_immediately: Optional Bool
  , arn: Optional Text
  , auto_minor_version_upgrade: Optional Bool
  , deployment_mode: Optional Text
  , publicly_accessible: Optional Bool
  , subnet_ids: Optional (List Text)
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , configuration: Optional Configuration
  , instances: Optional (List Instances)
  , logs: Optional Logs
  , maintenance_window_start_time: Optional MaintenanceWindowStartTime
  }

let AwsMqBrokerRequired =
  { broker_name: Text
  , engine_type: Text
  , engine_version: Text
  , host_instance_type: Text
  , security_groups: (List Text)
  , user: List User
  }
let AwsMqBroker = AwsMqBrokerOptional //\\ AwsMqBrokerRequired

in
{ AwsMqBrokerOptional = AwsMqBrokerOptional
, AwsMqBrokerRequired = AwsMqBrokerRequired
, AwsMqBroker = AwsMqBroker
, UserOptional = UserOptional
, UserRequired = UserRequired
, User = User
, MaintenanceWindowStartTime = MaintenanceWindowStartTime
, LogsOptional = LogsOptional
, LogsRequired = LogsRequired
, Logs = Logs
, InstancesOptional = InstancesOptional
, InstancesRequired = InstancesRequired
, Instances = Instances
, ConfigurationOptional = ConfigurationOptional
, ConfigurationRequired = ConfigurationRequired
, Configuration = Configuration
}
