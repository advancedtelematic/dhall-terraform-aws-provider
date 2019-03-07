
let AwsCloudformationStackOptional =
  { capabilities: Optional (List Text)
  , disable_rollback: Optional Bool
  , iam_role_arn: Optional Text
  , notification_arns: Optional (List Text)
  , on_failure: Optional Text
  , parameters: Optional (List { mapKey : Text, mapValue : Text })
  , policy_body: Optional Text
  , policy_url: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , template_body: Optional Text
  , template_url: Optional Text
  , timeout_in_minutes: Optional Natural
  }

let AwsCloudformationStackRequired =
  { name: Text }
let AwsCloudformationStack = AwsCloudformationStackOptional //\\ AwsCloudformationStackRequired

in
{ AwsCloudformationStackOptional = AwsCloudformationStackOptional
, AwsCloudformationStackRequired = AwsCloudformationStackRequired
, AwsCloudformationStack = AwsCloudformationStack
}
