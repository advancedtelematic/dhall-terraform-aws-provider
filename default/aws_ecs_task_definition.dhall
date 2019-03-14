
let placementConstraints =
  { expression = None Text }

let dockerVolumeConfiguration =
  { autoprovision = None Bool
  , driver = None Text
  , driver_opts = None (List { mapKey : Text, mapValue : Text })
  , labels = None (List { mapKey : Text, mapValue : Text })
  , scope = None Text
  }

let volume =
  { host_path = None Text
  , docker_volume_configuration = None (../dhall/aws_ecs_task_definition.dhall).DockerVolumeConfiguration
  }

let awsEcsTaskDefinition =
  { cpu = None Text
  , execution_role_arn = None Text
  , ipc_mode = None Text
  , memory = None Text
  , network_mode = None Text
  , pid_mode = None Text
  , requires_compatibilities = None (List Text)
  , tags = None (List { mapKey : Text, mapValue : Text })
  , task_role_arn = None Text
  , placement_constraints = None (List (../dhall/aws_ecs_task_definition.dhall).PlacementConstraints)
  , volume = None (List (../dhall/aws_ecs_task_definition.dhall).Volume)
  }

in
{ awsEcsTaskDefinition = awsEcsTaskDefinition
, volume = volume
, dockerVolumeConfiguration = dockerVolumeConfiguration
, placementConstraints = placementConstraints
}
