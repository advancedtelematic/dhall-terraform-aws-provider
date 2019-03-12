
let DeploymentControllerOptional =
  { type : Optional Text }

let DeploymentControllerRequired = {}
let DeploymentController = DeploymentControllerOptional //\\ DeploymentControllerRequired

let LoadBalancerOptional =
  { elb_name : Optional Text
  , target_group_arn : Optional Text
  }

let LoadBalancerRequired =
  { container_name : Text
  , container_port : Natural
  }
let LoadBalancer = LoadBalancerOptional //\\ LoadBalancerRequired

let NetworkConfigurationOptional =
  { assign_public_ip : Optional Bool
  , security_groups : Optional (List Text)
  }

let NetworkConfigurationRequired =
  { subnets : (List Text) }
let NetworkConfiguration = NetworkConfigurationOptional //\\ NetworkConfigurationRequired

let OrderedPlacementStrategyOptional =
  { field : Optional Text }

let OrderedPlacementStrategyRequired =
  { type : Text }
let OrderedPlacementStrategy = OrderedPlacementStrategyOptional //\\ OrderedPlacementStrategyRequired

let PlacementConstraintsOptional =
  { expression : Optional Text }

let PlacementConstraintsRequired =
  { type : Text }
let PlacementConstraints = PlacementConstraintsOptional //\\ PlacementConstraintsRequired

let PlacementStrategyOptional =
  { field : Optional Text }

let PlacementStrategyRequired =
  { type : Text }
let PlacementStrategy = PlacementStrategyOptional //\\ PlacementStrategyRequired

let ServiceRegistriesOptional =
  { container_name : Optional Text
  , container_port : Optional Natural
  , port : Optional Natural
  }

let ServiceRegistriesRequired =
  { registry_arn : Text }
let ServiceRegistries = ServiceRegistriesOptional //\\ ServiceRegistriesRequired

let AwsEcsServiceOptional =
  { cluster : Optional Text
  , deployment_maximum_percent : Optional Natural
  , deployment_minimum_healthy_percent : Optional Natural
  , desired_count : Optional Natural
  , enable_ecs_managed_tags : Optional Bool
  , health_check_grace_period_seconds : Optional Natural
  , iam_role : Optional Text
  , launch_type : Optional Text
  , platform_version : Optional Text
  , propagate_tags : Optional Text
  , scheduling_strategy : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , deployment_controller : Optional DeploymentController
  , load_balancer : Optional LoadBalancer
  , network_configuration : Optional NetworkConfiguration
  , ordered_placement_strategy : Optional (List OrderedPlacementStrategy)
  , placement_constraints : Optional (List PlacementConstraints)
  , placement_strategy : Optional (List PlacementStrategy)
  , service_registries : Optional ServiceRegistries
  }

let AwsEcsServiceRequired =
  { name : Text
  , task_definition : Text
  }
let AwsEcsService = AwsEcsServiceOptional //\\ AwsEcsServiceRequired

in
{ AwsEcsServiceOptional = AwsEcsServiceOptional
, AwsEcsServiceRequired = AwsEcsServiceRequired
, AwsEcsService = AwsEcsService
, ServiceRegistriesOptional = ServiceRegistriesOptional
, ServiceRegistriesRequired = ServiceRegistriesRequired
, ServiceRegistries = ServiceRegistries
, PlacementStrategyOptional = PlacementStrategyOptional
, PlacementStrategyRequired = PlacementStrategyRequired
, PlacementStrategy = PlacementStrategy
, PlacementConstraintsOptional = PlacementConstraintsOptional
, PlacementConstraintsRequired = PlacementConstraintsRequired
, PlacementConstraints = PlacementConstraints
, OrderedPlacementStrategyOptional = OrderedPlacementStrategyOptional
, OrderedPlacementStrategyRequired = OrderedPlacementStrategyRequired
, OrderedPlacementStrategy = OrderedPlacementStrategy
, NetworkConfigurationOptional = NetworkConfigurationOptional
, NetworkConfigurationRequired = NetworkConfigurationRequired
, NetworkConfiguration = NetworkConfiguration
, LoadBalancerOptional = LoadBalancerOptional
, LoadBalancerRequired = LoadBalancerRequired
, LoadBalancer = LoadBalancer
, DeploymentControllerOptional = DeploymentControllerOptional
, DeploymentControllerRequired = DeploymentControllerRequired
, DeploymentController = DeploymentController
}
