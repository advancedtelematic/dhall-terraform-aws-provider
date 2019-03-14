
let campaignHook =
  { lambda_function_name = None Text
  , mode = None Text
  , web_url = None Text
  }

let limits =
  { daily = None Natural
  , maximum_duration = None Natural
  , messages_per_second = None Natural
  , total = None Natural
  }

let quietTime =
  { end = None Text
  , start = None Text
  }

let awsPinpointApp =
  { name = None Text
  , name_prefix = None Text
  , campaign_hook = None (../dhall/aws_pinpoint_app.dhall).CampaignHook
  , limits = None (../dhall/aws_pinpoint_app.dhall).Limits
  , quiet_time = None (../dhall/aws_pinpoint_app.dhall).QuietTime
  }

in
{ awsPinpointApp = awsPinpointApp
, quietTime = quietTime
, limits = limits
, campaignHook = campaignHook
}
