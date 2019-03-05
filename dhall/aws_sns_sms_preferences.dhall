
let AwsSnsSmsPreferencesOptional =
  { default_sender_id: Optional Text
  , default_sms_type: Optional Text
  , delivery_status_iam_role_arn: Optional Text
  , delivery_status_success_sampling_rate: Optional Text
  , monthly_spend_limit: Optional Text
  , usage_report_s3_bucket: Optional Text
  }

let AwsSnsSmsPreferencesRequired = {}
let AwsSnsSmsPreferences = AwsSnsSmsPreferencesOptional //\\ AwsSnsSmsPreferencesRequired

in
{ AwsSnsSmsPreferencesOptional = AwsSnsSmsPreferencesOptional
, AwsSnsSmsPreferencesRequired = AwsSnsSmsPreferencesRequired
, AwsSnsSmsPreferences = AwsSnsSmsPreferences
}
