
let AwsPinpointEmailChannelOptional =
  { enabled : Optional Bool }

let AwsPinpointEmailChannelRequired =
  { application_id : Text
  , from_address : Text
  , identity : Text
  , role_arn : Text
  }
let AwsPinpointEmailChannel = AwsPinpointEmailChannelOptional //\\ AwsPinpointEmailChannelRequired

in
{ AwsPinpointEmailChannelOptional = AwsPinpointEmailChannelOptional
, AwsPinpointEmailChannelRequired = AwsPinpointEmailChannelRequired
, AwsPinpointEmailChannel = AwsPinpointEmailChannel
}
