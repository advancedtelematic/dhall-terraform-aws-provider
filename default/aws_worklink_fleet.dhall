
let identityProvider = {}

let network = {}

let awsWorklinkFleet =
  { audit_stream_arn = None Text
  , device_ca_certificate = None Text
  , display_name = None Text
  , optimize_for_end_user_location = None Bool
  , identity_provider = None (../dhall/aws_worklink_fleet.dhall).IdentityProvider
  , network = None (../dhall/aws_worklink_fleet.dhall).Network
  }

in
{ awsWorklinkFleet = awsWorklinkFleet
}
