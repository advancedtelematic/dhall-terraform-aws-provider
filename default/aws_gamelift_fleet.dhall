
let ec2InboundPermission = {}

let resourceCreationLimitPolicy =
  { new_game_sessions_per_creator = None Natural
  , policy_period_in_minutes = None Natural
  }

let serverProcess =
  { parameters = None Text }

let runtimeConfiguration =
  { game_session_activation_timeout_seconds = None Natural
  , max_concurrent_game_session_activations = None Natural
  , server_process = None (List (../dhall/aws_gamelift_fleet.dhall).ServerProcess)
  }

let awsGameliftFleet =
  { description = None Text
  , metric_groups = None (List Text)
  , new_game_session_protection_policy = None Text
  , ec2_inbound_permission = None (List (../dhall/aws_gamelift_fleet.dhall).Ec2InboundPermission)
  , resource_creation_limit_policy = None (../dhall/aws_gamelift_fleet.dhall).ResourceCreationLimitPolicy
  , runtime_configuration = None (../dhall/aws_gamelift_fleet.dhall).RuntimeConfiguration
  }

in
{ awsGameliftFleet = awsGameliftFleet
, runtimeConfiguration = runtimeConfiguration
, serverProcess = serverProcess
, resourceCreationLimitPolicy = resourceCreationLimitPolicy
}
