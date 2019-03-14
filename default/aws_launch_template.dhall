
let ebs =
  { delete_on_termination = None Text
  , encrypted = None Text
  , iops = None Natural
  , kms_key_id = None Text
  , snapshot_id = None Text
  , volume_size = None Natural
  , volume_type = None Text
  }

let blockDeviceMappings =
  { device_name = None Text
  , no_device = None Text
  , virtual_name = None Text
  , ebs = None (../dhall/aws_launch_template.dhall).Ebs
  }

let capacityReservationTarget =
  { capacity_reservation_id = None Text }

let capacityReservationSpecification =
  { capacity_reservation_preference = None Text
  , capacity_reservation_target = None (../dhall/aws_launch_template.dhall).CapacityReservationTarget
  }

let creditSpecification =
  { cpu_credits = None Text }

let elasticGpuSpecifications = {}

let iamInstanceProfile =
  { arn = None Text
  , name = None Text
  }

let spotOptions =
  { block_duration_minutes = None Natural
  , instance_interruption_behavior = None Text
  , max_price = None Text
  , spot_instance_type = None Text
  , valid_until = None Text
  }

let instanceMarketOptions =
  { market_type = None Text
  , spot_options = None (../dhall/aws_launch_template.dhall).SpotOptions
  }

let licenseSpecification = {}

let monitoring =
  { enabled = None Bool }

let networkInterfaces =
  { associate_public_ip_address = None Bool
  , delete_on_termination = None Bool
  , description = None Text
  , device_index = None Natural
  , ipv4_address_count = None Natural
  , ipv4_addresses = None (List Text)
  , ipv6_address_count = None Natural
  , ipv6_addresses = None (List Text)
  , network_interface_id = None Text
  , private_ip_address = None Text
  , security_groups = None (List Text)
  , subnet_id = None Text
  }

let placement =
  { affinity = None Text
  , availability_zone = None Text
  , group_name = None Text
  , host_id = None Text
  , spread_domain = None Text
  , tenancy = None Text
  }

let tagSpecifications =
  { resource_type = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

let awsLaunchTemplate =
  { description = None Text
  , disable_api_termination = None Bool
  , ebs_optimized = None Text
  , image_id = None Text
  , instance_initiated_shutdown_behavior = None Text
  , instance_type = None Text
  , kernel_id = None Text
  , key_name = None Text
  , name = None Text
  , name_prefix = None Text
  , ram_disk_id = None Text
  , security_group_names = None (List Text)
  , tags = None (List { mapKey : Text, mapValue : Text })
  , user_data = None Text
  , vpc_security_group_ids = None (List Text)
  , block_device_mappings = None (List (../dhall/aws_launch_template.dhall).BlockDeviceMappings)
  , capacity_reservation_specification = None (../dhall/aws_launch_template.dhall).CapacityReservationSpecification
  , credit_specification = None (../dhall/aws_launch_template.dhall).CreditSpecification
  , elastic_gpu_specifications = None (List (../dhall/aws_launch_template.dhall).ElasticGpuSpecifications)
  , iam_instance_profile = None (../dhall/aws_launch_template.dhall).IamInstanceProfile
  , instance_market_options = None (../dhall/aws_launch_template.dhall).InstanceMarketOptions
  , license_specification = None (List (../dhall/aws_launch_template.dhall).LicenseSpecification)
  , monitoring = None (../dhall/aws_launch_template.dhall).Monitoring
  , network_interfaces = None (List (../dhall/aws_launch_template.dhall).NetworkInterfaces)
  , placement = None (../dhall/aws_launch_template.dhall).Placement
  , tag_specifications = None (List (../dhall/aws_launch_template.dhall).TagSpecifications)
  }

in
{ awsLaunchTemplate = awsLaunchTemplate
, tagSpecifications = tagSpecifications
, placement = placement
, networkInterfaces = networkInterfaces
, monitoring = monitoring
, instanceMarketOptions = instanceMarketOptions
, spotOptions = spotOptions
, iamInstanceProfile = iamInstanceProfile
, creditSpecification = creditSpecification
, capacityReservationSpecification = capacityReservationSpecification
, capacityReservationTarget = capacityReservationTarget
, blockDeviceMappings = blockDeviceMappings
, ebs = ebs
}
