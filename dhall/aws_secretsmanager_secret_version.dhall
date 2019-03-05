
let AwsSecretsmanagerSecretVersionOptional =
  { arn: Optional Text
  , secret_binary: Optional Text
  , secret_string: Optional Text
  , version_id: Optional Text
  , version_stages: Optional (List Text)
  }

let AwsSecretsmanagerSecretVersionRequired =
  { secret_id: Text }
let AwsSecretsmanagerSecretVersion = AwsSecretsmanagerSecretVersionOptional //\\ AwsSecretsmanagerSecretVersionRequired

in
{ AwsSecretsmanagerSecretVersionOptional = AwsSecretsmanagerSecretVersionOptional
, AwsSecretsmanagerSecretVersionRequired = AwsSecretsmanagerSecretVersionRequired
, AwsSecretsmanagerSecretVersion = AwsSecretsmanagerSecretVersion
}
