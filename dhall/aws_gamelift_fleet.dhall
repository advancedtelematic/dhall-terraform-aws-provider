
let Ec2InboundPermissionOptional = {}

let Ec2InboundPermissionRequired =
  { from_port: Natural
  , ip_range: Text
  , protocol: Text
  , to_port: Natural
  }
let Ec2InboundPermission = Ec2InboundPermissionOptional //\\ Ec2InboundPermissionRequired

let ResourceCreationLimitPolicyOptional =
  { new_game_sessions_per_creator: Optional Natural
  , policy_period_in_minutes: Optional Natural
  }

let ResourceCreationLimitPolicyRequired = {}
let ResourceCreationLimitPolicy = ResourceCreationLimitPolicyOptional //\\ ResourceCreationLimitPolicyRequired

let ServerProcessOptional =
  { parameters: Optional Text }

let ServerProcessRequired =
  { concurrent_executions: Natural
  , launch_path: Text
  }
let ServerProcess = ServerProcessOptional //\\ ServerProcessRequired

let RuntimeConfigurationOptional =
  { game_session_activation_timeout_seconds: Optional Natural
  , max_concurrent_game_session_activations: Optional Natural
  , server_process: Optional (List ServerProcess)
  }

let RuntimeConfigurationRequired = {}
let RuntimeConfiguration = RuntimeConfigurationOptional //\\ RuntimeConfigurationRequired

let AwsGameliftFleetOptional =
  { description: Optional Text
  , metric_groups: Optional (List Text)
  , new_game_session_protection_policy: Optional Text
  , ec2_inbound_permission: Optional (List Ec2InboundPermission)
  , resource_creation_limit_policy: Optional ResourceCreationLimitPolicy
  , runtime_configuration: Optional RuntimeConfiguration
  }

let AwsGameliftFleetRequired =
  { build_id: Text
  , ec2_instance_type: Text
  , name: Text
  }
let AwsGameliftFleet = AwsGameliftFleetOptional //\\ AwsGameliftFleetRequired

in
{ AwsGameliftFleetOptional = AwsGameliftFleetOptional
, AwsGameliftFleetRequired = AwsGameliftFleetRequired
, AwsGameliftFleet = AwsGameliftFleet
, RuntimeConfigurationOptional = RuntimeConfigurationOptional
, RuntimeConfigurationRequired = RuntimeConfigurationRequired
, RuntimeConfiguration = RuntimeConfiguration
, ServerProcessOptional = ServerProcessOptional
, ServerProcessRequired = ServerProcessRequired
, ServerProcess = ServerProcess
, ResourceCreationLimitPolicyOptional = ResourceCreationLimitPolicyOptional
, ResourceCreationLimitPolicyRequired = ResourceCreationLimitPolicyRequired
, ResourceCreationLimitPolicy = ResourceCreationLimitPolicy
, Ec2InboundPermission = Ec2InboundPermission
}
