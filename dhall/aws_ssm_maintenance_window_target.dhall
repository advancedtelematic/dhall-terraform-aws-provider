
let TargetsOptional = {}

let TargetsRequired =
  { key: Text
  , values: (List Text)
  }
let Targets = TargetsOptional //\\ TargetsRequired

let AwsSsmMaintenanceWindowTargetOptional =
  { owner_information: Optional Text }

let AwsSsmMaintenanceWindowTargetRequired =
  { resource_type: Text
  , window_id: Text
  , targets: List List Targets
  }
let AwsSsmMaintenanceWindowTarget = AwsSsmMaintenanceWindowTargetOptional //\\ AwsSsmMaintenanceWindowTargetRequired

in
{ AwsSsmMaintenanceWindowTargetOptional = AwsSsmMaintenanceWindowTargetOptional
, AwsSsmMaintenanceWindowTargetRequired = AwsSsmMaintenanceWindowTargetRequired
, AwsSsmMaintenanceWindowTarget = AwsSsmMaintenanceWindowTarget
, Targets = Targets
}
