
let AuthenticateCognitoOptional =
  { authentication_request_extra_params: Optional (List { mapKey : Text, mapValue : Text })
  , on_unauthenticated_request: Optional Text
  , scope: Optional Text
  , session_cookie_name: Optional Text
  , session_timeout: Optional Natural
  }

let AuthenticateCognitoRequired =
  { user_pool_arn: Text
  , user_pool_client_id: Text
  , user_pool_domain: Text
  }
let AuthenticateCognito = AuthenticateCognitoOptional //\\ AuthenticateCognitoRequired

let AuthenticateOidcOptional =
  { authentication_request_extra_params: Optional (List { mapKey : Text, mapValue : Text })
  , on_unauthenticated_request: Optional Text
  , scope: Optional Text
  , session_cookie_name: Optional Text
  , session_timeout: Optional Natural
  }

let AuthenticateOidcRequired =
  { authorization_endpoint: Text
  , client_id: Text
  , client_secret: Text
  , issuer: Text
  , token_endpoint: Text
  , user_info_endpoint: Text
  }
let AuthenticateOidc = AuthenticateOidcOptional //\\ AuthenticateOidcRequired

let FixedResponseOptional =
  { message_body: Optional Text
  , status_code: Optional Text
  }

let FixedResponseRequired =
  { content_type: Text }
let FixedResponse = FixedResponseOptional //\\ FixedResponseRequired

let RedirectOptional =
  { host: Optional Text
  , path: Optional Text
  , port: Optional Text
  , protocol: Optional Text
  , query: Optional Text
  }

let RedirectRequired =
  { status_code: Text }
let Redirect = RedirectOptional //\\ RedirectRequired

let DefaultActionOptional =
  { order: Optional Natural
  , target_group_arn: Optional Text
  , authenticate_cognito: Optional AuthenticateCognito
  , authenticate_oidc: Optional AuthenticateOidc
  , fixed_response: Optional FixedResponse
  , redirect: Optional Redirect
  }

let DefaultActionRequired =
  { type: Text }
let DefaultAction = DefaultActionOptional //\\ DefaultActionRequired

let AwsLbListenerOptional =
  { arn: Optional Text
  , certificate_arn: Optional Text
  , protocol: Optional Text
  , ssl_policy: Optional Text
  }

let AwsLbListenerRequired =
  { load_balancer_arn: Text
  , port: Natural
  , default_action: List DefaultAction
  }
let AwsLbListener = AwsLbListenerOptional //\\ AwsLbListenerRequired

in
{ AwsLbListenerOptional = AwsLbListenerOptional
, AwsLbListenerRequired = AwsLbListenerRequired
, AwsLbListener = AwsLbListener
, DefaultActionOptional = DefaultActionOptional
, DefaultActionRequired = DefaultActionRequired
, DefaultAction = DefaultAction
, RedirectOptional = RedirectOptional
, RedirectRequired = RedirectRequired
, Redirect = Redirect
, FixedResponseOptional = FixedResponseOptional
, FixedResponseRequired = FixedResponseRequired
, FixedResponse = FixedResponse
, AuthenticateOidcOptional = AuthenticateOidcOptional
, AuthenticateOidcRequired = AuthenticateOidcRequired
, AuthenticateOidc = AuthenticateOidc
, AuthenticateCognitoOptional = AuthenticateCognitoOptional
, AuthenticateCognitoRequired = AuthenticateCognitoRequired
, AuthenticateCognito = AuthenticateCognito
}
