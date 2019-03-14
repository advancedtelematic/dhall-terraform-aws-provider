
let initialLifecycleHook =
  { default_result = None Text
  , heartbeat_timeout = None Natural
  , notification_metadata = None Text
  , notification_target_arn = None Text
  , role_arn = None Text
  }

let launchTemplate =
  { id = None Text
  , name = None Text
  , version = None Text
  }

let instancesDistribution =
  { on_demand_allocation_strategy = None Text
  , on_demand_base_capacity = None Natural
  , on_demand_percentage_above_base_capacity = None Natural
  , spot_allocation_strategy = None Text
  , spot_instance_pools = None Natural
  , spot_max_price = None Text
  }

let launchTemplateSpecification =
  { launch_template_id = None Text
  , launch_template_name = None Text
  , version = None Text
  }

let override =
  { instance_type = None Text }

let launchTemplate =
  { override = None (List (../dhall/aws_autoscaling_group.dhall).Override) }

let mixedInstancesPolicy =
  { instances_distribution = None (../dhall/aws_autoscaling_group.dhall).InstancesDistribution }

let tag = {}

let awsAutoscalingGroup =
  { availability_zones = None (List Text)
  , default_cooldown = None Natural
  , desired_capacity = None Natural
  , enabled_metrics = None (List Text)
  , force_delete = None Bool
  , health_check_grace_period = None Natural
  , health_check_type = None Text
  , launch_configuration = None Text
  , load_balancers = None (List Text)
  , metrics_granularity = None Text
  , min_elb_capacity = None Natural
  , name = None Text
  , name_prefix = None Text
  , placement_group = None Text
  , protect_from_scale_in = None Bool
  , service_linked_role_arn = None Text
  , suspended_processes = None (List Text)
  , tags = None (List { key : Text, value : Text, propagate_at_launch : Bool })
  , target_group_arns = None (List Text)
  , termination_policies = None (List Text)
  , vpc_zone_identifier = None (List Text)
  , wait_for_capacity_timeout = None Text
  , wait_for_elb_capacity = None Natural
  , initial_lifecycle_hook = None (List (../dhall/aws_autoscaling_group.dhall).InitialLifecycleHook)
  , launch_template = None (../dhall/aws_autoscaling_group.dhall).LaunchTemplate
  , mixed_instances_policy = None (../dhall/aws_autoscaling_group.dhall).MixedInstancesPolicy
  , tag = None (List (../dhall/aws_autoscaling_group.dhall).Tag)
  }

in
{ awsAutoscalingGroup = awsAutoscalingGroup
, mixedInstancesPolicy = mixedInstancesPolicy
, launchTemplate = launchTemplate
, override = override
, launchTemplateSpecification = launchTemplateSpecification
, instancesDistribution = instancesDistribution
, launchTemplate = launchTemplate
, initialLifecycleHook = initialLifecycleHook
}
