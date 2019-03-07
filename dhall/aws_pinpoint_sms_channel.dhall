
let AwsPinpointSmsChannelOptional =
  { enabled: Optional Bool
  , sender_id: Optional Text
  , short_code: Optional Text
  }

let AwsPinpointSmsChannelRequired =
  { application_id: Text }
let AwsPinpointSmsChannel = AwsPinpointSmsChannelOptional //\\ AwsPinpointSmsChannelRequired

in
{ AwsPinpointSmsChannelOptional = AwsPinpointSmsChannelOptional
, AwsPinpointSmsChannelRequired = AwsPinpointSmsChannelRequired
, AwsPinpointSmsChannel = AwsPinpointSmsChannel
}
