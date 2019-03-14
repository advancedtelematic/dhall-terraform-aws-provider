
let playerLatencyPolicy =
  { policy_duration_seconds = None Natural }

let awsGameliftGameSessionQueue =
  { destinations = None (List Text)
  , timeout_in_seconds = None Natural
  , player_latency_policy = None (List (../dhall/aws_gamelift_game_session_queue.dhall).PlayerLatencyPolicy)
  }

in
{ awsGameliftGameSessionQueue = awsGameliftGameSessionQueue
, playerLatencyPolicy = playerLatencyPolicy
}
