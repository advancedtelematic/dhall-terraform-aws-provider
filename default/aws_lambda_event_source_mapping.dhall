
let awsLambdaEventSourceMapping =
  { batch_size = None Natural
  , enabled = None Bool
  , starting_position = None Text
  , starting_position_timestamp = None Text
  }

in
{ awsLambdaEventSourceMapping = awsLambdaEventSourceMapping
}
