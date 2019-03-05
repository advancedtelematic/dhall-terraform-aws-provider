
let CloudwatchDestinationOptional = {}

let CloudwatchDestinationRequired =
  { default_value: Text
  , dimension_name: Text
  , value_source: Text
  }
let CloudwatchDestination = CloudwatchDestinationOptional //\\ CloudwatchDestinationRequired

let KinesisDestinationOptional = {}

let KinesisDestinationRequired =
  { role_arn: Text
  , stream_arn: Text
  }
let KinesisDestination = KinesisDestinationOptional //\\ KinesisDestinationRequired

let SnsDestinationOptional = {}

let SnsDestinationRequired =
  { topic_arn: Text }
let SnsDestination = SnsDestinationOptional //\\ SnsDestinationRequired

let AwsSesEventDestinationOptional =
  { enabled: Optional Bool
  , cloudwatch_destination: Optional (List CloudwatchDestination)
  , kinesis_destination: Optional KinesisDestination
  , sns_destination: Optional SnsDestination
  }

let AwsSesEventDestinationRequired =
  { configuration_set_name: Text
  , matching_types: (List Text)
  , name: Text
  }
let AwsSesEventDestination = AwsSesEventDestinationOptional //\\ AwsSesEventDestinationRequired

in
{ AwsSesEventDestinationOptional = AwsSesEventDestinationOptional
, AwsSesEventDestinationRequired = AwsSesEventDestinationRequired
, AwsSesEventDestination = AwsSesEventDestination
, SnsDestination = SnsDestination
, KinesisDestination = KinesisDestination
, CloudwatchDestination = CloudwatchDestination
}
