
let awsSsmMaintenanceWindow =
  { allow_unassociated_targets = None Bool
  , enabled = None Bool
  , end_date = None Text
  , schedule_timezone = None Text
  , start_date = None Text
  }

in
{ awsSsmMaintenanceWindow = awsSsmMaintenanceWindow
}
