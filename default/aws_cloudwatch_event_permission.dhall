
let condition = {}

let awsCloudwatchEventPermission =
  { action = None Text
  , condition = None (../dhall/aws_cloudwatch_event_permission.dhall).Condition
  }

in
{ awsCloudwatchEventPermission = awsCloudwatchEventPermission
}
