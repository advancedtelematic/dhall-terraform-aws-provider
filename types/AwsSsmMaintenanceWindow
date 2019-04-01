
let AwsSsmMaintenanceWindowOptional =
  { allow_unassociated_targets : Optional Bool
  , enabled : Optional Bool
  , end_date : Optional Text
  , schedule_timezone : Optional Text
  , start_date : Optional Text
  }

let AwsSsmMaintenanceWindowRequired =
  { cutoff : Natural
  , duration : Natural
  , name : Text
  , schedule : Text
  }
let AwsSsmMaintenanceWindow = AwsSsmMaintenanceWindowOptional //\\ AwsSsmMaintenanceWindowRequired

in
{ AwsSsmMaintenanceWindowOptional = AwsSsmMaintenanceWindowOptional
, AwsSsmMaintenanceWindowRequired = AwsSsmMaintenanceWindowRequired
, AwsSsmMaintenanceWindow = AwsSsmMaintenanceWindow
}
