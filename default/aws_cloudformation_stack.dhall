
let awsCloudformationStack =
  { capabilities = None (List Text)
  , disable_rollback = None Bool
  , iam_role_arn = None Text
  , notification_arns = None (List Text)
  , on_failure = None Text
  , parameters = None (List { mapKey : Text, mapValue : Text })
  , policy_body = None Text
  , policy_url = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , template_body = None Text
  , template_url = None Text
  , timeout_in_minutes = None Natural
  }

in
{ awsCloudformationStack = awsCloudformationStack
}
