
let AwsCognitoUserPoolClientOptional =
  { allowed_oauth_flows: Optional (List Text)
  , allowed_oauth_flows_user_pool_client: Optional Bool
  , allowed_oauth_scopes: Optional (List Text)
  , callback_urls: Optional (List Text)
  , default_redirect_uri: Optional Text
  , explicit_auth_flows: Optional (List Text)
  , generate_secret: Optional Bool
  , logout_urls: Optional (List Text)
  , read_attributes: Optional (List Text)
  , refresh_token_validity: Optional Natural
  , supported_identity_providers: Optional (List Text)
  , write_attributes: Optional (List Text)
  }

let AwsCognitoUserPoolClientRequired =
  { name: Text
  , user_pool_id: Text
  }
let AwsCognitoUserPoolClient = AwsCognitoUserPoolClientOptional //\\ AwsCognitoUserPoolClientRequired

in
{ AwsCognitoUserPoolClientOptional = AwsCognitoUserPoolClientOptional
, AwsCognitoUserPoolClientRequired = AwsCognitoUserPoolClientRequired
, AwsCognitoUserPoolClient = AwsCognitoUserPoolClient
}
