
let AwsSnsPlatformApplicationOptional =
  { event_delivery_failure_topic_arn: Optional Text
  , event_endpoint_created_topic_arn: Optional Text
  , event_endpoint_deleted_topic_arn: Optional Text
  , event_endpoint_updated_topic_arn: Optional Text
  , failure_feedback_role_arn: Optional Text
  , platform_principal: Optional Text
  , success_feedback_role_arn: Optional Text
  , success_feedback_sample_rate: Optional Text
  }

let AwsSnsPlatformApplicationRequired =
  { name: Text
  , platform: Text
  , platform_credential: Text
  }
let AwsSnsPlatformApplication = AwsSnsPlatformApplicationOptional //\\ AwsSnsPlatformApplicationRequired

in
{ AwsSnsPlatformApplicationOptional = AwsSnsPlatformApplicationOptional
, AwsSnsPlatformApplicationRequired = AwsSnsPlatformApplicationRequired
, AwsSnsPlatformApplication = AwsSnsPlatformApplication
}
