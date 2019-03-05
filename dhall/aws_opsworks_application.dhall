
let AppSourceOptional =
  { password: Optional Text
  , revision: Optional Text
  , ssh_key: Optional Text
  , url: Optional Text
  , username: Optional Text
  }

let AppSourceRequired =
  { type: Text }
let AppSource = AppSourceOptional //\\ AppSourceRequired

let EnvironmentOptional =
  { secure: Optional Bool }

let EnvironmentRequired =
  { key: Text
  , value: Text
  }
let Environment = EnvironmentOptional //\\ EnvironmentRequired

let SslConfigurationOptional =
  { chain: Optional Text }

let SslConfigurationRequired =
  { certificate: Text
  , private_key: Text
  }
let SslConfiguration = SslConfigurationOptional //\\ SslConfigurationRequired

let AwsOpsworksApplicationOptional =
  { auto_bundle_on_deploy: Optional Text
  , aws_flow_ruby_settings: Optional Text
  , data_source_arn: Optional Text
  , data_source_database_name: Optional Text
  , data_source_type: Optional Text
  , description: Optional Text
  , document_root: Optional Text
  , domains: Optional (List Text)
  , enable_ssl: Optional Bool
  , rails_env: Optional Text
  , short_name: Optional Text
  , app_source: Optional (List AppSource)
  , environment: Optional (List Environment)
  , ssl_configuration: Optional (List SslConfiguration)
  }

let AwsOpsworksApplicationRequired =
  { name: Text
  , stack_id: Text
  , type: Text
  }
let AwsOpsworksApplication = AwsOpsworksApplicationOptional //\\ AwsOpsworksApplicationRequired

in
{ AwsOpsworksApplicationOptional = AwsOpsworksApplicationOptional
, AwsOpsworksApplicationRequired = AwsOpsworksApplicationRequired
, AwsOpsworksApplication = AwsOpsworksApplication
, SslConfigurationOptional = SslConfigurationOptional
, SslConfigurationRequired = SslConfigurationRequired
, SslConfiguration = SslConfiguration
, EnvironmentOptional = EnvironmentOptional
, EnvironmentRequired = EnvironmentRequired
, Environment = Environment
, AppSourceOptional = AppSourceOptional
, AppSourceRequired = AppSourceRequired
, AppSource = AppSource
}
