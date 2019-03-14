
let appSource =
  { password = None Text
  , revision = None Text
  , ssh_key = None Text
  , url = None Text
  , username = None Text
  }

let environment =
  { secure = None Bool }

let sslConfiguration =
  { chain = None Text }

let awsOpsworksApplication =
  { auto_bundle_on_deploy = None Text
  , aws_flow_ruby_settings = None Text
  , data_source_arn = None Text
  , data_source_database_name = None Text
  , data_source_type = None Text
  , description = None Text
  , document_root = None Text
  , domains = None (List Text)
  , enable_ssl = None Bool
  , rails_env = None Text
  , short_name = None Text
  , app_source = None (List (../dhall/aws_opsworks_application.dhall).AppSource)
  , environment = None (List (../dhall/aws_opsworks_application.dhall).Environment)
  , ssl_configuration = None (List (../dhall/aws_opsworks_application.dhall).SslConfiguration)
  }

in
{ awsOpsworksApplication = awsOpsworksApplication
, sslConfiguration = sslConfiguration
, environment = environment
, appSource = appSource
}
