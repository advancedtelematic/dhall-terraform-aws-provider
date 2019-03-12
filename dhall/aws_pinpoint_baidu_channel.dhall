
let AwsPinpointBaiduChannelOptional =
  { enabled : Optional Bool }

let AwsPinpointBaiduChannelRequired =
  { api_key : Text
  , application_id : Text
  , secret_key : Text
  }
let AwsPinpointBaiduChannel = AwsPinpointBaiduChannelOptional //\\ AwsPinpointBaiduChannelRequired

in
{ AwsPinpointBaiduChannelOptional = AwsPinpointBaiduChannelOptional
, AwsPinpointBaiduChannelRequired = AwsPinpointBaiduChannelRequired
, AwsPinpointBaiduChannel = AwsPinpointBaiduChannel
}
