
let AwsSesIdentityNotificationTopicOptional =
  { topic_arn: Optional Text }

let AwsSesIdentityNotificationTopicRequired =
  { identity: Text
  , notification_type: Text
  }
let AwsSesIdentityNotificationTopic = AwsSesIdentityNotificationTopicOptional //\\ AwsSesIdentityNotificationTopicRequired

in
{ AwsSesIdentityNotificationTopicOptional = AwsSesIdentityNotificationTopicOptional
, AwsSesIdentityNotificationTopicRequired = AwsSesIdentityNotificationTopicRequired
, AwsSesIdentityNotificationTopic = AwsSesIdentityNotificationTopic
}
