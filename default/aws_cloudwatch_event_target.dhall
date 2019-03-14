
let batchTarget =
  { array_size = None Natural
  , job_attempts = None Natural
  }

let networkConfiguration =
  { assign_public_ip = None Bool
  , security_groups = None (List Text)
  }

let ecsTarget =
  { group = None Text
  , launch_type = None Text
  , platform_version = None Text
  , task_count = None Natural
  , network_configuration = None (../dhall/aws_cloudwatch_event_target.dhall).NetworkConfiguration
  }

let inputTransformer =
  { input_paths = None (List { mapKey : Text, mapValue : Text }) }

let kinesisTarget =
  { partition_key_path = None Text }

let runCommandTargets = {}

let sqsTarget =
  { message_group_id = None Text }

let awsCloudwatchEventTarget =
  { input = None Text
  , input_path = None Text
  , role_arn = None Text
  , target_id = None Text
  , batch_target = None (../dhall/aws_cloudwatch_event_target.dhall).BatchTarget
  , ecs_target = None (../dhall/aws_cloudwatch_event_target.dhall).EcsTarget
  , input_transformer = None (../dhall/aws_cloudwatch_event_target.dhall).InputTransformer
  , kinesis_target = None (../dhall/aws_cloudwatch_event_target.dhall).KinesisTarget
  , run_command_targets = None (List (../dhall/aws_cloudwatch_event_target.dhall).RunCommandTargets)
  , sqs_target = None (../dhall/aws_cloudwatch_event_target.dhall).SqsTarget
  }

in
{ awsCloudwatchEventTarget = awsCloudwatchEventTarget
, sqsTarget = sqsTarget
, kinesisTarget = kinesisTarget
, inputTransformer = inputTransformer
, ecsTarget = ecsTarget
, networkConfiguration = networkConfiguration
, batchTarget = batchTarget
}
