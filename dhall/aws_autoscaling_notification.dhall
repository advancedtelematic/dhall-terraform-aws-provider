
let AwsAutoscalingNotificationOptional = {}

let AwsAutoscalingNotificationRequired =
  { group_names: (List Text)
  , notifications: (List Text)
  , topic_arn: Text
  }
let AwsAutoscalingNotification = AwsAutoscalingNotificationOptional //\\ AwsAutoscalingNotificationRequired

in
{ AwsAutoscalingNotification = AwsAutoscalingNotification
}
