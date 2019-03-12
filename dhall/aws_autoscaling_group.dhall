
let InitialLifecycleHookOptional =
  { default_result : Optional Text
  , heartbeat_timeout : Optional Natural
  , notification_metadata : Optional Text
  , notification_target_arn : Optional Text
  , role_arn : Optional Text
  }

let InitialLifecycleHookRequired =
  { lifecycle_transition : Text
  , name : Text
  }
let InitialLifecycleHook = InitialLifecycleHookOptional //\\ InitialLifecycleHookRequired

let LaunchTemplateOptional =
  { id : Optional Text
  , name : Optional Text
  , version : Optional Text
  }

let LaunchTemplateRequired = {}
let LaunchTemplate = LaunchTemplateOptional //\\ LaunchTemplateRequired

let InstancesDistributionOptional =
  { on_demand_allocation_strategy : Optional Text
  , on_demand_base_capacity : Optional Natural
  , on_demand_percentage_above_base_capacity : Optional Natural
  , spot_allocation_strategy : Optional Text
  , spot_instance_pools : Optional Natural
  , spot_max_price : Optional Text
  }

let InstancesDistributionRequired = {}
let InstancesDistribution = InstancesDistributionOptional //\\ InstancesDistributionRequired

let LaunchTemplateSpecificationOptional =
  { launch_template_id : Optional Text
  , launch_template_name : Optional Text
  , version : Optional Text
  }

let LaunchTemplateSpecificationRequired = {}
let LaunchTemplateSpecification = LaunchTemplateSpecificationOptional //\\ LaunchTemplateSpecificationRequired

let OverrideOptional =
  { instance_type : Optional Text }

let OverrideRequired = {}
let Override = OverrideOptional //\\ OverrideRequired

let LaunchTemplateOptional =
  { override : Optional (List Override) }

let LaunchTemplateRequired =
  { launch_template_specification : LaunchTemplateSpecification }
let LaunchTemplate = LaunchTemplateOptional //\\ LaunchTemplateRequired

let MixedInstancesPolicyOptional =
  { instances_distribution : Optional InstancesDistribution }

let MixedInstancesPolicyRequired =
  { launch_template : LaunchTemplate }
let MixedInstancesPolicy = MixedInstancesPolicyOptional //\\ MixedInstancesPolicyRequired

let TagOptional = {}

let TagRequired =
  { key : Text
  , propagate_at_launch : Bool
  , value : Text
  }
let Tag = TagOptional //\\ TagRequired

let AwsAutoscalingGroupOptional =
  { availability_zones : Optional (List Text)
  , default_cooldown : Optional Natural
  , desired_capacity : Optional Natural
  , enabled_metrics : Optional (List Text)
  , force_delete : Optional Bool
  , health_check_grace_period : Optional Natural
  , health_check_type : Optional Text
  , launch_configuration : Optional Text
  , load_balancers : Optional (List Text)
  , metrics_granularity : Optional Text
  , min_elb_capacity : Optional Natural
  , name : Optional Text
  , name_prefix : Optional Text
  , placement_group : Optional Text
  , protect_from_scale_in : Optional Bool
  , service_linked_role_arn : Optional Text
  , suspended_processes : Optional (List Text)
  , tags : Optional (List { key : Text, value : Text, propagate_at_launch : Bool })
  , target_group_arns : Optional (List Text)
  , termination_policies : Optional (List Text)
  , vpc_zone_identifier : Optional (List Text)
  , wait_for_capacity_timeout : Optional Text
  , wait_for_elb_capacity : Optional Natural
  , initial_lifecycle_hook : Optional (List InitialLifecycleHook)
  , launch_template : Optional LaunchTemplate
  , mixed_instances_policy : Optional MixedInstancesPolicy
  , tag : Optional (List Tag)
  }

let AwsAutoscalingGroupRequired =
  { max_size : Natural
  , min_size : Natural
  }
let AwsAutoscalingGroup = AwsAutoscalingGroupOptional //\\ AwsAutoscalingGroupRequired

in
{ AwsAutoscalingGroupOptional = AwsAutoscalingGroupOptional
, AwsAutoscalingGroupRequired = AwsAutoscalingGroupRequired
, AwsAutoscalingGroup = AwsAutoscalingGroup
, Tag = Tag
, MixedInstancesPolicyOptional = MixedInstancesPolicyOptional
, MixedInstancesPolicyRequired = MixedInstancesPolicyRequired
, MixedInstancesPolicy = MixedInstancesPolicy
, LaunchTemplateOptional = LaunchTemplateOptional
, LaunchTemplateRequired = LaunchTemplateRequired
, LaunchTemplate = LaunchTemplate
, OverrideOptional = OverrideOptional
, OverrideRequired = OverrideRequired
, Override = Override
, LaunchTemplateSpecificationOptional = LaunchTemplateSpecificationOptional
, LaunchTemplateSpecificationRequired = LaunchTemplateSpecificationRequired
, LaunchTemplateSpecification = LaunchTemplateSpecification
, InstancesDistributionOptional = InstancesDistributionOptional
, InstancesDistributionRequired = InstancesDistributionRequired
, InstancesDistribution = InstancesDistribution
, LaunchTemplateOptional = LaunchTemplateOptional
, LaunchTemplateRequired = LaunchTemplateRequired
, LaunchTemplate = LaunchTemplate
, InitialLifecycleHookOptional = InitialLifecycleHookOptional
, InitialLifecycleHookRequired = InitialLifecycleHookRequired
, InitialLifecycleHook = InitialLifecycleHook
}
