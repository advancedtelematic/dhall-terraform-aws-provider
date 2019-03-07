
let CognitoIdentityProvidersOptional =
  { client_id: Optional Text
  , provider_name: Optional Text
  , server_side_token_check: Optional Bool
  }

let CognitoIdentityProvidersRequired = {}
let CognitoIdentityProviders = CognitoIdentityProvidersOptional //\\ CognitoIdentityProvidersRequired

let AwsCognitoIdentityPoolOptional =
  { allow_unauthenticated_identities: Optional Bool
  , developer_provider_name: Optional Text
  , openid_connect_provider_arns: Optional (List Text)
  , saml_provider_arns: Optional (List Text)
  , supported_login_providers: Optional (List { mapKey : Text, mapValue : Text })
  , cognito_identity_providers: Optional (List CognitoIdentityProviders)
  }

let AwsCognitoIdentityPoolRequired =
  { identity_pool_name: Text }
let AwsCognitoIdentityPool = AwsCognitoIdentityPoolOptional //\\ AwsCognitoIdentityPoolRequired

in
{ AwsCognitoIdentityPoolOptional = AwsCognitoIdentityPoolOptional
, AwsCognitoIdentityPoolRequired = AwsCognitoIdentityPoolRequired
, AwsCognitoIdentityPool = AwsCognitoIdentityPool
, CognitoIdentityProvidersOptional = CognitoIdentityProvidersOptional
, CognitoIdentityProvidersRequired = CognitoIdentityProvidersRequired
, CognitoIdentityProviders = CognitoIdentityProviders
}
