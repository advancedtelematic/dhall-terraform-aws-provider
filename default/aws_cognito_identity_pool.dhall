
let cognitoIdentityProviders =
  { client_id = None Text
  , provider_name = None Text
  , server_side_token_check = None Bool
  }

let awsCognitoIdentityPool =
  { allow_unauthenticated_identities = None Bool
  , developer_provider_name = None Text
  , openid_connect_provider_arns = None (List Text)
  , saml_provider_arns = None (List Text)
  , supported_login_providers = None (List { mapKey : Text, mapValue : Text })
  , cognito_identity_providers = None (List (../dhall/aws_cognito_identity_pool.dhall).CognitoIdentityProviders)
  }

in
{ awsCognitoIdentityPool = awsCognitoIdentityPool
, cognitoIdentityProviders = cognitoIdentityProviders
}
