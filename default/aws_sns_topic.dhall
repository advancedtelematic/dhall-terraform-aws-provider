
let awsSnsTopic =
  { application_failure_feedback_role_arn = None Text
  , application_success_feedback_role_arn = None Text
  , application_success_feedback_sample_rate = None Natural
  , delivery_policy = None Text
  , display_name = None Text
  , http_failure_feedback_role_arn = None Text
  , http_success_feedback_role_arn = None Text
  , http_success_feedback_sample_rate = None Natural
  , kms_master_key_id = None Text
  , lambda_failure_feedback_role_arn = None Text
  , lambda_success_feedback_role_arn = None Text
  , lambda_success_feedback_sample_rate = None Natural
  , name = None Text
  , name_prefix = None Text
  , policy = None Text
  , sqs_failure_feedback_role_arn = None Text
  , sqs_success_feedback_role_arn = None Text
  , sqs_success_feedback_sample_rate = None Natural
  }

in
{ awsSnsTopic = awsSnsTopic
}
