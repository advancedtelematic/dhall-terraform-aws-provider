
let BatchTargetOptional =
  { array_size: Optional Natural
  , job_attempts: Optional Natural
  }

let BatchTargetRequired =
  { job_definition: Text
  , job_name: Text
  }
let BatchTarget = BatchTargetOptional //\\ BatchTargetRequired

let NetworkConfigurationOptional =
  { assign_public_ip: Optional Bool
  , security_groups: Optional (List Text)
  }

let NetworkConfigurationRequired =
  { subnets: (List Text) }
let NetworkConfiguration = NetworkConfigurationOptional //\\ NetworkConfigurationRequired

let EcsTargetOptional =
  { group: Optional Text
  , launch_type: Optional Text
  , platform_version: Optional Text
  , task_count: Optional Natural
  , network_configuration: Optional NetworkConfiguration
  }

let EcsTargetRequired =
  { task_definition_arn: Text }
let EcsTarget = EcsTargetOptional //\\ EcsTargetRequired

let InputTransformerOptional =
  { input_paths: Optional (List { mapKey : Text, mapValue : Text }) }

let InputTransformerRequired =
  { input_template: Text }
let InputTransformer = InputTransformerOptional //\\ InputTransformerRequired

let KinesisTargetOptional =
  { partition_key_path: Optional Text }

let KinesisTargetRequired = {}
let KinesisTarget = KinesisTargetOptional //\\ KinesisTargetRequired

let RunCommandTargetsOptional = {}

let RunCommandTargetsRequired =
  { key: Text
  , values: (List Text)
  }
let RunCommandTargets = RunCommandTargetsOptional //\\ RunCommandTargetsRequired

let SqsTargetOptional =
  { message_group_id: Optional Text }

let SqsTargetRequired = {}
let SqsTarget = SqsTargetOptional //\\ SqsTargetRequired

let AwsCloudwatchEventTargetOptional =
  { input: Optional Text
  , input_path: Optional Text
  , role_arn: Optional Text
  , target_id: Optional Text
  , batch_target: Optional BatchTarget
  , ecs_target: Optional EcsTarget
  , input_transformer: Optional InputTransformer
  , kinesis_target: Optional KinesisTarget
  , run_command_targets: Optional (List RunCommandTargets)
  , sqs_target: Optional SqsTarget
  }

let AwsCloudwatchEventTargetRequired =
  { arn: Text
  , rule: Text
  }
let AwsCloudwatchEventTarget = AwsCloudwatchEventTargetOptional //\\ AwsCloudwatchEventTargetRequired

in
{ AwsCloudwatchEventTargetOptional = AwsCloudwatchEventTargetOptional
, AwsCloudwatchEventTargetRequired = AwsCloudwatchEventTargetRequired
, AwsCloudwatchEventTarget = AwsCloudwatchEventTarget
, SqsTargetOptional = SqsTargetOptional
, SqsTargetRequired = SqsTargetRequired
, SqsTarget = SqsTarget
, RunCommandTargets = RunCommandTargets
, KinesisTargetOptional = KinesisTargetOptional
, KinesisTargetRequired = KinesisTargetRequired
, KinesisTarget = KinesisTarget
, InputTransformerOptional = InputTransformerOptional
, InputTransformerRequired = InputTransformerRequired
, InputTransformer = InputTransformer
, EcsTargetOptional = EcsTargetOptional
, EcsTargetRequired = EcsTargetRequired
, EcsTarget = EcsTarget
, NetworkConfigurationOptional = NetworkConfigurationOptional
, NetworkConfigurationRequired = NetworkConfigurationRequired
, NetworkConfiguration = NetworkConfiguration
, BatchTargetOptional = BatchTargetOptional
, BatchTargetRequired = BatchTargetRequired
, BatchTarget = BatchTarget
}
