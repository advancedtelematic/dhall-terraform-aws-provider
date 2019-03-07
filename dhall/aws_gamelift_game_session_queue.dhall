
let PlayerLatencyPolicyOptional =
  { policy_duration_seconds: Optional Natural }

let PlayerLatencyPolicyRequired =
  { maximum_individual_player_latency_milliseconds: Natural }
let PlayerLatencyPolicy = PlayerLatencyPolicyOptional //\\ PlayerLatencyPolicyRequired

let AwsGameliftGameSessionQueueOptional =
  { destinations: Optional (List Text)
  , timeout_in_seconds: Optional Natural
  , player_latency_policy: Optional (List PlayerLatencyPolicy)
  }

let AwsGameliftGameSessionQueueRequired =
  { name: Text }
let AwsGameliftGameSessionQueue = AwsGameliftGameSessionQueueOptional //\\ AwsGameliftGameSessionQueueRequired

in
{ AwsGameliftGameSessionQueueOptional = AwsGameliftGameSessionQueueOptional
, AwsGameliftGameSessionQueueRequired = AwsGameliftGameSessionQueueRequired
, AwsGameliftGameSessionQueue = AwsGameliftGameSessionQueue
, PlayerLatencyPolicyOptional = PlayerLatencyPolicyOptional
, PlayerLatencyPolicyRequired = PlayerLatencyPolicyRequired
, PlayerLatencyPolicy = PlayerLatencyPolicy
}
