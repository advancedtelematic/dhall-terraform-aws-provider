
let CampaignHookOptional =
  { lambda_function_name : Optional Text
  , mode : Optional Text
  , web_url : Optional Text
  }

let CampaignHookRequired = {}
let CampaignHook = CampaignHookOptional //\\ CampaignHookRequired

let LimitsOptional =
  { daily : Optional Natural
  , maximum_duration : Optional Natural
  , messages_per_second : Optional Natural
  , total : Optional Natural
  }

let LimitsRequired = {}
let Limits = LimitsOptional //\\ LimitsRequired

let QuietTimeOptional =
  { end : Optional Text
  , start : Optional Text
  }

let QuietTimeRequired = {}
let QuietTime = QuietTimeOptional //\\ QuietTimeRequired

let AwsPinpointAppOptional =
  { name : Optional Text
  , name_prefix : Optional Text
  , campaign_hook : Optional CampaignHook
  , limits : Optional Limits
  , quiet_time : Optional QuietTime
  }

let AwsPinpointAppRequired = {}
let AwsPinpointApp = AwsPinpointAppOptional //\\ AwsPinpointAppRequired

in
{ AwsPinpointAppOptional = AwsPinpointAppOptional
, AwsPinpointAppRequired = AwsPinpointAppRequired
, AwsPinpointApp = AwsPinpointApp
, QuietTimeOptional = QuietTimeOptional
, QuietTimeRequired = QuietTimeRequired
, QuietTime = QuietTime
, LimitsOptional = LimitsOptional
, LimitsRequired = LimitsRequired
, Limits = Limits
, CampaignHookOptional = CampaignHookOptional
, CampaignHookRequired = CampaignHookRequired
, CampaignHook = CampaignHook
}
