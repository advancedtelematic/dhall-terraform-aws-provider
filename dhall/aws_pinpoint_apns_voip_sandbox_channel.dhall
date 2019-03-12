
let AwsPinpointApnsVoipSandboxChannelOptional =
  { bundle_id : Optional Text
  , certificate : Optional Text
  , default_authentication_method : Optional Text
  , enabled : Optional Bool
  , private_key : Optional Text
  , team_id : Optional Text
  , token_key : Optional Text
  , token_key_id : Optional Text
  }

let AwsPinpointApnsVoipSandboxChannelRequired =
  { application_id : Text }
let AwsPinpointApnsVoipSandboxChannel = AwsPinpointApnsVoipSandboxChannelOptional //\\ AwsPinpointApnsVoipSandboxChannelRequired

in
{ AwsPinpointApnsVoipSandboxChannelOptional = AwsPinpointApnsVoipSandboxChannelOptional
, AwsPinpointApnsVoipSandboxChannelRequired = AwsPinpointApnsVoipSandboxChannelRequired
, AwsPinpointApnsVoipSandboxChannel = AwsPinpointApnsVoipSandboxChannel
}
