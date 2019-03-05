
let AwsSnsTopicOptional =
  { application_failure_feedback_role_arn: Optional Text
  , application_success_feedback_role_arn: Optional Text
  , application_success_feedback_sample_rate: Optional Natural
  , arn: Optional Text
  , delivery_policy: Optional Text
  , display_name: Optional Text
  , http_failure_feedback_role_arn: Optional Text
  , http_success_feedback_role_arn: Optional Text
  , http_success_feedback_sample_rate: Optional Natural
  , kms_master_key_id: Optional Text
  , lambda_failure_feedback_role_arn: Optional Text
  , lambda_success_feedback_role_arn: Optional Text
  , lambda_success_feedback_sample_rate: Optional Natural
  , name: Optional Text
  , name_prefix: Optional Text
  , policy: Optional Text
  , sqs_failure_feedback_role_arn: Optional Text
  , sqs_success_feedback_role_arn: Optional Text
  , sqs_success_feedback_sample_rate: Optional Natural
  }

let AwsSnsTopicRequired = {}
let AwsSnsTopic = AwsSnsTopicOptional //\\ AwsSnsTopicRequired

in
{ AwsSnsTopicOptional = AwsSnsTopicOptional
, AwsSnsTopicRequired = AwsSnsTopicRequired
, AwsSnsTopic = AwsSnsTopic
}
