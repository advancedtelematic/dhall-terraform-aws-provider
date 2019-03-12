
let AuthenticateCognitoOptional =
  { authentication_request_extra_params : Optional (List { mapKey : Text, mapValue : Text })
  , on_unauthenticated_request : Optional Text
  , scope : Optional Text
  , session_cookie_name : Optional Text
  , session_timeout : Optional Natural
  }

let AuthenticateCognitoRequired =
  { user_pool_arn : Text
  , user_pool_client_id : Text
  , user_pool_domain : Text
  }
let AuthenticateCognito = AuthenticateCognitoOptional //\\ AuthenticateCognitoRequired

let AuthenticateOidcOptional =
  { authentication_request_extra_params : Optional (List { mapKey : Text, mapValue : Text })
  , on_unauthenticated_request : Optional Text
  , scope : Optional Text
  , session_cookie_name : Optional Text
  , session_timeout : Optional Natural
  }

let AuthenticateOidcRequired =
  { authorization_endpoint : Text
  , client_id : Text
  , client_secret : Text
  , issuer : Text
  , token_endpoint : Text
  , user_info_endpoint : Text
  }
let AuthenticateOidc = AuthenticateOidcOptional //\\ AuthenticateOidcRequired

let FixedResponseOptional =
  { message_body : Optional Text
  , status_code : Optional Text
  }

let FixedResponseRequired =
  { content_type : Text }
let FixedResponse = FixedResponseOptional //\\ FixedResponseRequired

let RedirectOptional =
  { host : Optional Text
  , path : Optional Text
  , port : Optional Text
  , protocol : Optional Text
  , query : Optional Text
  }

let RedirectRequired =
  { status_code : Text }
let Redirect = RedirectOptional //\\ RedirectRequired

let ActionOptional =
  { order : Optional Natural
  , target_group_arn : Optional Text
  , authenticate_cognito : Optional AuthenticateCognito
  , authenticate_oidc : Optional AuthenticateOidc
  , fixed_response : Optional FixedResponse
  , redirect : Optional Redirect
  }

let ActionRequired =
  { type : Text }
let Action = ActionOptional //\\ ActionRequired

let ConditionOptional =
  { field : Optional Text
  , values : Optional (List Text)
  }

let ConditionRequired = {}
let Condition = ConditionOptional //\\ ConditionRequired

let AwsLbListenerRuleOptional =
  { priority : Optional Natural }

let AwsLbListenerRuleRequired =
  { listener_arn : Text
  , action : List Action
  , condition : List Condition
  }
let AwsLbListenerRule = AwsLbListenerRuleOptional //\\ AwsLbListenerRuleRequired

in
{ AwsLbListenerRuleOptional = AwsLbListenerRuleOptional
, AwsLbListenerRuleRequired = AwsLbListenerRuleRequired
, AwsLbListenerRule = AwsLbListenerRule
, ConditionOptional = ConditionOptional
, ConditionRequired = ConditionRequired
, Condition = Condition
, ActionOptional = ActionOptional
, ActionRequired = ActionRequired
, Action = Action
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
