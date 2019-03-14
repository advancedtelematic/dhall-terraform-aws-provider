
let authenticationConfiguration =
  { allowed_ip_range = None Text
  , secret_token = None Text
  }

let filter = {}

let awsCodepipelineWebhook = {}

in
{ authenticationConfiguration = authenticationConfiguration
}
