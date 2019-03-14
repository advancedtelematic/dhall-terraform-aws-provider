
let awsCloudwatchEventRule =
  { description = None Text
  , event_pattern = None Text
  , is_enabled = None Bool
  , name = None Text
  , name_prefix = None Text
  , role_arn = None Text
  , schedule_expression = None Text
  }

in
{ awsCloudwatchEventRule = awsCloudwatchEventRule
}
