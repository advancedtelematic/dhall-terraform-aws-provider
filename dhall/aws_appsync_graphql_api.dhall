
let LogConfigOptional = {}

let LogConfigRequired =
  { cloudwatch_logs_role_arn: Text
  , field_log_level: Text
  }
let LogConfig = LogConfigOptional //\\ LogConfigRequired

let OpenidConnectConfigOptional =
  { auth_ttl: Optional Natural
  , client_id: Optional Text
  , iat_ttl: Optional Natural
  }

let OpenidConnectConfigRequired =
  { issuer: Text }
let OpenidConnectConfig = OpenidConnectConfigOptional //\\ OpenidConnectConfigRequired

let UserPoolConfigOptional =
  { app_id_client_regex: Optional Text
  , aws_region: Optional Text
  }

let UserPoolConfigRequired =
  { default_action: Text
  , user_pool_id: Text
  }
let UserPoolConfig = UserPoolConfigOptional //\\ UserPoolConfigRequired

let AwsAppsyncGraphqlApiOptional =
  { log_config: Optional LogConfig
  , openid_connect_config: Optional OpenidConnectConfig
  , user_pool_config: Optional UserPoolConfig
  }

let AwsAppsyncGraphqlApiRequired =
  { authentication_type: Text
  , name: Text
  }
let AwsAppsyncGraphqlApi = AwsAppsyncGraphqlApiOptional //\\ AwsAppsyncGraphqlApiRequired

in
{ AwsAppsyncGraphqlApiOptional = AwsAppsyncGraphqlApiOptional
, AwsAppsyncGraphqlApiRequired = AwsAppsyncGraphqlApiRequired
, AwsAppsyncGraphqlApi = AwsAppsyncGraphqlApi
, UserPoolConfigOptional = UserPoolConfigOptional
, UserPoolConfigRequired = UserPoolConfigRequired
, UserPoolConfig = UserPoolConfig
, OpenidConnectConfigOptional = OpenidConnectConfigOptional
, OpenidConnectConfigRequired = OpenidConnectConfigRequired
, OpenidConnectConfig = OpenidConnectConfig
, LogConfig = LogConfig
}
