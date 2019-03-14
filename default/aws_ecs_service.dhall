
let deploymentController =
  { type = None Text }

let loadBalancer =
  { elb_name = None Text
  , target_group_arn = None Text
  }

let networkConfiguration =
  { assign_public_ip = None Bool
  , security_groups = None (List Text)
  }

let orderedPlacementStrategy =
  { field = None Text }

let placementConstraints =
  { expression = None Text }

let placementStrategy =
  { field = None Text }

let serviceRegistries =
  { container_name = None Text
  , container_port = None Natural
  , port = None Natural
  }

let awsEcsService =
  { cluster = None Text
  , deployment_maximum_percent = None Natural
  , deployment_minimum_healthy_percent = None Natural
  , desired_count = None Natural
  , enable_ecs_managed_tags = None Bool
  , health_check_grace_period_seconds = None Natural
  , iam_role = None Text
  , launch_type = None Text
  , platform_version = None Text
  , propagate_tags = None Text
  , scheduling_strategy = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , deployment_controller = None (../dhall/aws_ecs_service.dhall).DeploymentController
  , load_balancer = None (../dhall/aws_ecs_service.dhall).LoadBalancer
  , network_configuration = None (../dhall/aws_ecs_service.dhall).NetworkConfiguration
  , ordered_placement_strategy = None (List (../dhall/aws_ecs_service.dhall).OrderedPlacementStrategy)
  , placement_constraints = None (List (../dhall/aws_ecs_service.dhall).PlacementConstraints)
  , placement_strategy = None (List (../dhall/aws_ecs_service.dhall).PlacementStrategy)
  , service_registries = None (../dhall/aws_ecs_service.dhall).ServiceRegistries
  }

in
{ awsEcsService = awsEcsService
, serviceRegistries = serviceRegistries
, placementStrategy = placementStrategy
, placementConstraints = placementConstraints
, orderedPlacementStrategy = orderedPlacementStrategy
, networkConfiguration = networkConfiguration
, loadBalancer = loadBalancer
, deploymentController = deploymentController
}
