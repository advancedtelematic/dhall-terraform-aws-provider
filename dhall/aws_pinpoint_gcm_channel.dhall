
let AwsPinpointGcmChannelOptional =
  { enabled: Optional Bool }

let AwsPinpointGcmChannelRequired =
  { api_key: Text
  , application_id: Text
  }
let AwsPinpointGcmChannel = AwsPinpointGcmChannelOptional //\\ AwsPinpointGcmChannelRequired

in
{ AwsPinpointGcmChannelOptional = AwsPinpointGcmChannelOptional
, AwsPinpointGcmChannelRequired = AwsPinpointGcmChannelRequired
, AwsPinpointGcmChannel = AwsPinpointGcmChannel
}
