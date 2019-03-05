
let AwsPinpointSmsChannelOptional =
  { enabled: Optional Bool
  , promotional_messages_per_second: Optional Natural
  , sender_id: Optional Text
  , short_code: Optional Text
  , transactional_messages_per_second: Optional Natural
  }

let AwsPinpointSmsChannelRequired =
  { application_id: Text }
let AwsPinpointSmsChannel = AwsPinpointSmsChannelOptional //\\ AwsPinpointSmsChannelRequired

in
{ AwsPinpointSmsChannelOptional = AwsPinpointSmsChannelOptional
, AwsPinpointSmsChannelRequired = AwsPinpointSmsChannelRequired
, AwsPinpointSmsChannel = AwsPinpointSmsChannel
}
