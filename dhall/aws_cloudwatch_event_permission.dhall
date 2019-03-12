
let ConditionOptional = {}

let ConditionRequired =
  { key : Text
  , type : Text
  , value : Text
  }
let Condition = ConditionOptional //\\ ConditionRequired

let AwsCloudwatchEventPermissionOptional =
  { action : Optional Text
  , condition : Optional Condition
  }

let AwsCloudwatchEventPermissionRequired =
  { principal : Text
  , statement_id : Text
  }
let AwsCloudwatchEventPermission = AwsCloudwatchEventPermissionOptional //\\ AwsCloudwatchEventPermissionRequired

in
{ AwsCloudwatchEventPermissionOptional = AwsCloudwatchEventPermissionOptional
, AwsCloudwatchEventPermissionRequired = AwsCloudwatchEventPermissionRequired
, AwsCloudwatchEventPermission = AwsCloudwatchEventPermission
, Condition = Condition
}
