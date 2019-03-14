
let awsSecretsmanagerSecretVersion =
  { secret_binary = None Text
  , secret_string = None Text
  , version_stages = None (List Text)
  }

in
{ awsSecretsmanagerSecretVersion = awsSecretsmanagerSecretVersion
}
