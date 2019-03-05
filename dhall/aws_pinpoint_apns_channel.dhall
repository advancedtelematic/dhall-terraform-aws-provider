
let AwsPinpointApnsChannelOptional =
  { bundle_id: Optional Text
  , certificate: Optional Text
  , default_authentication_method: Optional Text
  , enabled: Optional Bool
  , private_key: Optional Text
  , team_id: Optional Text
  , token_key: Optional Text
  , token_key_id: Optional Text
  }

let AwsPinpointApnsChannelRequired =
  { application_id: Text }
let AwsPinpointApnsChannel = AwsPinpointApnsChannelOptional //\\ AwsPinpointApnsChannelRequired

in
{ AwsPinpointApnsChannelOptional = AwsPinpointApnsChannelOptional
, AwsPinpointApnsChannelRequired = AwsPinpointApnsChannelRequired
, AwsPinpointApnsChannel = AwsPinpointApnsChannel
}
