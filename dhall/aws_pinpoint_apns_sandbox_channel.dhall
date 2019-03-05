
let AwsPinpointApnsSandboxChannelOptional =
  { bundle_id: Optional Text
  , certificate: Optional Text
  , default_authentication_method: Optional Text
  , enabled: Optional Bool
  , private_key: Optional Text
  , team_id: Optional Text
  , token_key: Optional Text
  , token_key_id: Optional Text
  }

let AwsPinpointApnsSandboxChannelRequired =
  { application_id: Text }
let AwsPinpointApnsSandboxChannel = AwsPinpointApnsSandboxChannelOptional //\\ AwsPinpointApnsSandboxChannelRequired

in
{ AwsPinpointApnsSandboxChannelOptional = AwsPinpointApnsSandboxChannelOptional
, AwsPinpointApnsSandboxChannelRequired = AwsPinpointApnsSandboxChannelRequired
, AwsPinpointApnsSandboxChannel = AwsPinpointApnsSandboxChannel
}
