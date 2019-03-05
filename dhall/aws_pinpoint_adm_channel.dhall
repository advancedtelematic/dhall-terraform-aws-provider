
let AwsPinpointAdmChannelOptional =
  { enabled: Optional Bool }

let AwsPinpointAdmChannelRequired =
  { application_id: Text
  , client_id: Text
  , client_secret: Text
  }
let AwsPinpointAdmChannel = AwsPinpointAdmChannelOptional //\\ AwsPinpointAdmChannelRequired

in
{ AwsPinpointAdmChannelOptional = AwsPinpointAdmChannelOptional
, AwsPinpointAdmChannelRequired = AwsPinpointAdmChannelRequired
, AwsPinpointAdmChannel = AwsPinpointAdmChannel
}
