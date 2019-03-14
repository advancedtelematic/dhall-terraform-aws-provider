
let authenticateCognito =
  { authentication_request_extra_params = None (List { mapKey : Text, mapValue : Text })
  , on_unauthenticated_request = None Text
  , scope = None Text
  , session_cookie_name = None Text
  , session_timeout = None Natural
  }

let authenticateOidc =
  { authentication_request_extra_params = None (List { mapKey : Text, mapValue : Text })
  , on_unauthenticated_request = None Text
  , scope = None Text
  , session_cookie_name = None Text
  , session_timeout = None Natural
  }

let fixedResponse =
  { message_body = None Text
  , status_code = None Text
  }

let redirect =
  { host = None Text
  , path = None Text
  , port = None Text
  , protocol = None Text
  , query = None Text
  }

let defaultAction =
  { order = None Natural
  , target_group_arn = None Text
  , authenticate_cognito = None (../dhall/aws_alb_listener.dhall).AuthenticateCognito
  , authenticate_oidc = None (../dhall/aws_alb_listener.dhall).AuthenticateOidc
  , fixed_response = None (../dhall/aws_alb_listener.dhall).FixedResponse
  , redirect = None (../dhall/aws_alb_listener.dhall).Redirect
  }

let awsAlbListener =
  { certificate_arn = None Text
  , protocol = None Text
  , ssl_policy = None Text
  }

in
{ awsAlbListener = awsAlbListener
, defaultAction = defaultAction
, redirect = redirect
, fixedResponse = fixedResponse
, authenticateOidc = authenticateOidc
, authenticateCognito = authenticateCognito
}
