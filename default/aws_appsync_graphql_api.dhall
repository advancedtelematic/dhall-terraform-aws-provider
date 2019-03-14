
let logConfig = {}

let openidConnectConfig =
  { auth_ttl = None Natural
  , client_id = None Text
  , iat_ttl = None Natural
  }

let userPoolConfig =
  { app_id_client_regex = None Text
  , aws_region = None Text
  }

let awsAppsyncGraphqlApi =
  { log_config = None (../dhall/aws_appsync_graphql_api.dhall).LogConfig
  , openid_connect_config = None (../dhall/aws_appsync_graphql_api.dhall).OpenidConnectConfig
  , user_pool_config = None (../dhall/aws_appsync_graphql_api.dhall).UserPoolConfig
  }

in
{ awsAppsyncGraphqlApi = awsAppsyncGraphqlApi
, userPoolConfig = userPoolConfig
, openidConnectConfig = openidConnectConfig
}
