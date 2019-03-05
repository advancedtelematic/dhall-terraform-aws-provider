
let LoggingInfoOptional =
  { s3_bucket_prefix: Optional Text }

let LoggingInfoRequired =
  { s3_bucket_name: Text
  , s3_region: Text
  }
let LoggingInfo = LoggingInfoOptional //\\ LoggingInfoRequired

let TargetsOptional = {}

let TargetsRequired =
  { key: Text
  , values: (List Text)
  }
let Targets = TargetsOptional //\\ TargetsRequired

let TaskParametersOptional = {}

let TaskParametersRequired =
  { name: Text
  , values: (List Text)
  }
let TaskParameters = TaskParametersOptional //\\ TaskParametersRequired

let AwsSsmMaintenanceWindowTaskOptional =
  { description: Optional Text
  , name: Optional Text
  , priority: Optional Natural
  , logging_info: Optional LoggingInfo
  , task_parameters: Optional (List TaskParameters)
  }

let AwsSsmMaintenanceWindowTaskRequired =
  { max_concurrency: Text
  , max_errors: Text
  , service_role_arn: Text
  , task_arn: Text
  , task_type: Text
  , window_id: Text
  , targets: List List Targets
  }
let AwsSsmMaintenanceWindowTask = AwsSsmMaintenanceWindowTaskOptional //\\ AwsSsmMaintenanceWindowTaskRequired

in
{ AwsSsmMaintenanceWindowTaskOptional = AwsSsmMaintenanceWindowTaskOptional
, AwsSsmMaintenanceWindowTaskRequired = AwsSsmMaintenanceWindowTaskRequired
, AwsSsmMaintenanceWindowTask = AwsSsmMaintenanceWindowTask
, TaskParameters = TaskParameters
, Targets = Targets
, LoggingInfoOptional = LoggingInfoOptional
, LoggingInfoRequired = LoggingInfoRequired
, LoggingInfo = LoggingInfo
}
