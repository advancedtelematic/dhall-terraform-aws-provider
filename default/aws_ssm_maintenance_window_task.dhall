
let loggingInfo =
  { s3_bucket_prefix = None Text }

let targets = {}

let taskParameters = {}

let awsSsmMaintenanceWindowTask =
  { description = None Text
  , name = None Text
  , priority = None Natural
  , logging_info = None (../dhall/aws_ssm_maintenance_window_task.dhall).LoggingInfo
  , task_parameters = None (List (../dhall/aws_ssm_maintenance_window_task.dhall).TaskParameters)
  }

in
{ awsSsmMaintenanceWindowTask = awsSsmMaintenanceWindowTask
, loggingInfo = loggingInfo
}
