
let RotationRulesOptional = {}

let RotationRulesRequired =
  { automatically_after_days: Natural }
let RotationRules = RotationRulesOptional //\\ RotationRulesRequired

let AwsSecretsmanagerSecretOptional =
  { description: Optional Text
  , kms_key_id: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , policy: Optional Text
  , recovery_window_in_days: Optional Natural
  , rotation_lambda_arn: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , rotation_rules: Optional RotationRules
  }

let AwsSecretsmanagerSecretRequired = {}
let AwsSecretsmanagerSecret = AwsSecretsmanagerSecretOptional //\\ AwsSecretsmanagerSecretRequired

in
{ AwsSecretsmanagerSecretOptional = AwsSecretsmanagerSecretOptional
, AwsSecretsmanagerSecretRequired = AwsSecretsmanagerSecretRequired
, AwsSecretsmanagerSecret = AwsSecretsmanagerSecret
, RotationRules = RotationRules
}
