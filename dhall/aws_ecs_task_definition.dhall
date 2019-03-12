
let PlacementConstraintsOptional =
  { expression : Optional Text }

let PlacementConstraintsRequired =
  { type : Text }
let PlacementConstraints = PlacementConstraintsOptional //\\ PlacementConstraintsRequired

let DockerVolumeConfigurationOptional =
  { autoprovision : Optional Bool
  , driver : Optional Text
  , driver_opts : Optional (List { mapKey : Text, mapValue : Text })
  , labels : Optional (List { mapKey : Text, mapValue : Text })
  , scope : Optional Text
  }

let DockerVolumeConfigurationRequired = {}
let DockerVolumeConfiguration = DockerVolumeConfigurationOptional //\\ DockerVolumeConfigurationRequired

let VolumeOptional =
  { host_path : Optional Text
  , docker_volume_configuration : Optional DockerVolumeConfiguration
  }

let VolumeRequired =
  { name : Text }
let Volume = VolumeOptional //\\ VolumeRequired

let AwsEcsTaskDefinitionOptional =
  { cpu : Optional Text
  , execution_role_arn : Optional Text
  , ipc_mode : Optional Text
  , memory : Optional Text
  , network_mode : Optional Text
  , pid_mode : Optional Text
  , requires_compatibilities : Optional (List Text)
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , task_role_arn : Optional Text
  , placement_constraints : Optional (List PlacementConstraints)
  , volume : Optional (List Volume)
  }

let AwsEcsTaskDefinitionRequired =
  { container_definitions : Text
  , family : Text
  }
let AwsEcsTaskDefinition = AwsEcsTaskDefinitionOptional //\\ AwsEcsTaskDefinitionRequired

in
{ AwsEcsTaskDefinitionOptional = AwsEcsTaskDefinitionOptional
, AwsEcsTaskDefinitionRequired = AwsEcsTaskDefinitionRequired
, AwsEcsTaskDefinition = AwsEcsTaskDefinition
, VolumeOptional = VolumeOptional
, VolumeRequired = VolumeRequired
, Volume = Volume
, DockerVolumeConfigurationOptional = DockerVolumeConfigurationOptional
, DockerVolumeConfigurationRequired = DockerVolumeConfigurationRequired
, DockerVolumeConfiguration = DockerVolumeConfiguration
, PlacementConstraintsOptional = PlacementConstraintsOptional
, PlacementConstraintsRequired = PlacementConstraintsRequired
, PlacementConstraints = PlacementConstraints
}
