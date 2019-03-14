
let launchTemplateSpecification =
  { launch_template_id = None Text
  , launch_template_name = None Text
  }

let override =
  { availability_zone = None Text
  , instance_type = None Text
  , max_price = None Text
  , priority = None Natural
  , subnet_id = None Text
  , weighted_capacity = None Natural
  }

let launchTemplateConfig =
  { override = None (List (../dhall/aws_ec2_fleet.dhall).Override) }

let onDemandOptions =
  { allocation_strategy = None Text }

let spotOptions =
  { allocation_strategy = None Text
  , instance_interruption_behavior = None Text
  , instance_pools_to_use_count = None Natural
  }

let targetCapacitySpecification =
  { on_demand_target_capacity = None Natural
  , spot_target_capacity = None Natural
  }

let awsEc2Fleet =
  { excess_capacity_termination_policy = None Text
  , replace_unhealthy_instances = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , terminate_instances = None Bool
  , terminate_instances_with_expiration = None Bool
  , type = None Text
  , on_demand_options = None (../dhall/aws_ec2_fleet.dhall).OnDemandOptions
  , spot_options = None (../dhall/aws_ec2_fleet.dhall).SpotOptions
  }

in
{ awsEc2Fleet = awsEc2Fleet
, targetCapacitySpecification = targetCapacitySpecification
, spotOptions = spotOptions
, onDemandOptions = onDemandOptions
, launchTemplateConfig = launchTemplateConfig
, override = override
, launchTemplateSpecification = launchTemplateSpecification
}
