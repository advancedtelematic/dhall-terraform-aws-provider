
let cloudwatchDestination = {}

let kinesisDestination = {}

let snsDestination = {}

let awsSesEventDestination =
  { enabled = None Bool
  , cloudwatch_destination = None (List (../dhall/aws_ses_event_destination.dhall).CloudwatchDestination)
  , kinesis_destination = None (../dhall/aws_ses_event_destination.dhall).KinesisDestination
  , sns_destination = None (../dhall/aws_ses_event_destination.dhall).SnsDestination
  }

in
{ awsSesEventDestination = awsSesEventDestination
}
