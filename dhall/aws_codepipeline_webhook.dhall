
let AuthenticationConfigurationOptional =
  { allowed_ip_range: Optional Text
  , secret_token: Optional Text
  }

let AuthenticationConfigurationRequired = {}
let AuthenticationConfiguration = AuthenticationConfigurationOptional //\\ AuthenticationConfigurationRequired

let FilterOptional = {}

let FilterRequired =
  { json_path: Text
  , match_equals: Text
  }
let Filter = FilterOptional //\\ FilterRequired

let AwsCodepipelineWebhookOptional = {}

let AwsCodepipelineWebhookRequired =
  { authentication: Text
  , name: Text
  , target_action: Text
  , target_pipeline: Text
  , authentication_configuration: AuthenticationConfiguration
  , filter: List Filter
  }
let AwsCodepipelineWebhook = AwsCodepipelineWebhookOptional //\\ AwsCodepipelineWebhookRequired

in
{ AwsCodepipelineWebhook = AwsCodepipelineWebhook
, Filter = Filter
, AuthenticationConfigurationOptional = AuthenticationConfigurationOptional
, AuthenticationConfigurationRequired = AuthenticationConfigurationRequired
, AuthenticationConfiguration = AuthenticationConfiguration
}
