
let rotationRules = {}

let awsSecretsmanagerSecret =
  { description = None Text
  , kms_key_id = None Text
  , name = None Text
  , name_prefix = None Text
  , policy = None Text
  , recovery_window_in_days = None Natural
  , rotation_lambda_arn = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , rotation_rules = None (../dhall/aws_secretsmanager_secret.dhall).RotationRules
  }

in
{ awsSecretsmanagerSecret = awsSecretsmanagerSecret
}
