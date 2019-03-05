
let LaunchTemplateSpecificationOptional =
  { launch_template_id: Optional Text
  , launch_template_name: Optional Text
  }

let LaunchTemplateSpecificationRequired =
  { version: Text }
let LaunchTemplateSpecification = LaunchTemplateSpecificationOptional //\\ LaunchTemplateSpecificationRequired

let OverrideOptional =
  { availability_zone: Optional Text
  , instance_type: Optional Text
  , max_price: Optional Text
  , priority: Optional Natural
  , subnet_id: Optional Text
  , weighted_capacity: Optional Natural
  }

let OverrideRequired = {}
let Override = OverrideOptional //\\ OverrideRequired

let LaunchTemplateConfigOptional =
  { override: Optional (List Override) }

let LaunchTemplateConfigRequired =
  { launch_template_specification: LaunchTemplateSpecification }
let LaunchTemplateConfig = LaunchTemplateConfigOptional //\\ LaunchTemplateConfigRequired

let OnDemandOptionsOptional =
  { allocation_strategy: Optional Text }

let OnDemandOptionsRequired = {}
let OnDemandOptions = OnDemandOptionsOptional //\\ OnDemandOptionsRequired

let SpotOptionsOptional =
  { allocation_strategy: Optional Text
  , instance_interruption_behavior: Optional Text
  , instance_pools_to_use_count: Optional Natural
  }

let SpotOptionsRequired = {}
let SpotOptions = SpotOptionsOptional //\\ SpotOptionsRequired

let TargetCapacitySpecificationOptional =
  { on_demand_target_capacity: Optional Natural
  , spot_target_capacity: Optional Natural
  }

let TargetCapacitySpecificationRequired =
  { default_target_capacity_type: Text
  , total_target_capacity: Natural
  }
let TargetCapacitySpecification = TargetCapacitySpecificationOptional //\\ TargetCapacitySpecificationRequired

let AwsEc2FleetOptional =
  { excess_capacity_termination_policy: Optional Text
  , replace_unhealthy_instances: Optional Bool
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , terminate_instances: Optional Bool
  , terminate_instances_with_expiration: Optional Bool
  , type: Optional Text
  , on_demand_options: Optional OnDemandOptions
  , spot_options: Optional SpotOptions
  }

let AwsEc2FleetRequired =
  { launch_template_config: LaunchTemplateConfig
  , target_capacity_specification: TargetCapacitySpecification
  }
let AwsEc2Fleet = AwsEc2FleetOptional //\\ AwsEc2FleetRequired

in
{ AwsEc2FleetOptional = AwsEc2FleetOptional
, AwsEc2FleetRequired = AwsEc2FleetRequired
, AwsEc2Fleet = AwsEc2Fleet
, TargetCapacitySpecificationOptional = TargetCapacitySpecificationOptional
, TargetCapacitySpecificationRequired = TargetCapacitySpecificationRequired
, TargetCapacitySpecification = TargetCapacitySpecification
, SpotOptionsOptional = SpotOptionsOptional
, SpotOptionsRequired = SpotOptionsRequired
, SpotOptions = SpotOptions
, OnDemandOptionsOptional = OnDemandOptionsOptional
, OnDemandOptionsRequired = OnDemandOptionsRequired
, OnDemandOptions = OnDemandOptions
, LaunchTemplateConfigOptional = LaunchTemplateConfigOptional
, LaunchTemplateConfigRequired = LaunchTemplateConfigRequired
, LaunchTemplateConfig = LaunchTemplateConfig
, OverrideOptional = OverrideOptional
, OverrideRequired = OverrideRequired
, Override = Override
, LaunchTemplateSpecificationOptional = LaunchTemplateSpecificationOptional
, LaunchTemplateSpecificationRequired = LaunchTemplateSpecificationRequired
, LaunchTemplateSpecification = LaunchTemplateSpecification
}
