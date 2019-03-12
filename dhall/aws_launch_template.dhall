
let EbsOptional =
  { delete_on_termination : Optional Text
  , encrypted : Optional Text
  , iops : Optional Natural
  , kms_key_id : Optional Text
  , snapshot_id : Optional Text
  , volume_size : Optional Natural
  , volume_type : Optional Text
  }

let EbsRequired = {}
let Ebs = EbsOptional //\\ EbsRequired

let BlockDeviceMappingsOptional =
  { device_name : Optional Text
  , no_device : Optional Text
  , virtual_name : Optional Text
  , ebs : Optional Ebs
  }

let BlockDeviceMappingsRequired = {}
let BlockDeviceMappings = BlockDeviceMappingsOptional //\\ BlockDeviceMappingsRequired

let CapacityReservationTargetOptional =
  { capacity_reservation_id : Optional Text }

let CapacityReservationTargetRequired = {}
let CapacityReservationTarget = CapacityReservationTargetOptional //\\ CapacityReservationTargetRequired

let CapacityReservationSpecificationOptional =
  { capacity_reservation_preference : Optional Text
  , capacity_reservation_target : Optional CapacityReservationTarget
  }

let CapacityReservationSpecificationRequired = {}
let CapacityReservationSpecification = CapacityReservationSpecificationOptional //\\ CapacityReservationSpecificationRequired

let CreditSpecificationOptional =
  { cpu_credits : Optional Text }

let CreditSpecificationRequired = {}
let CreditSpecification = CreditSpecificationOptional //\\ CreditSpecificationRequired

let ElasticGpuSpecificationsOptional = {}

let ElasticGpuSpecificationsRequired =
  { type : Text }
let ElasticGpuSpecifications = ElasticGpuSpecificationsOptional //\\ ElasticGpuSpecificationsRequired

let IamInstanceProfileOptional =
  { arn : Optional Text
  , name : Optional Text
  }

let IamInstanceProfileRequired = {}
let IamInstanceProfile = IamInstanceProfileOptional //\\ IamInstanceProfileRequired

let SpotOptionsOptional =
  { block_duration_minutes : Optional Natural
  , instance_interruption_behavior : Optional Text
  , max_price : Optional Text
  , spot_instance_type : Optional Text
  , valid_until : Optional Text
  }

let SpotOptionsRequired = {}
let SpotOptions = SpotOptionsOptional //\\ SpotOptionsRequired

let InstanceMarketOptionsOptional =
  { market_type : Optional Text
  , spot_options : Optional SpotOptions
  }

let InstanceMarketOptionsRequired = {}
let InstanceMarketOptions = InstanceMarketOptionsOptional //\\ InstanceMarketOptionsRequired

let LicenseSpecificationOptional = {}

let LicenseSpecificationRequired =
  { license_configuration_arn : Text }
let LicenseSpecification = LicenseSpecificationOptional //\\ LicenseSpecificationRequired

let MonitoringOptional =
  { enabled : Optional Bool }

let MonitoringRequired = {}
let Monitoring = MonitoringOptional //\\ MonitoringRequired

let NetworkInterfacesOptional =
  { associate_public_ip_address : Optional Bool
  , delete_on_termination : Optional Bool
  , description : Optional Text
  , device_index : Optional Natural
  , ipv4_address_count : Optional Natural
  , ipv4_addresses : Optional (List Text)
  , ipv6_address_count : Optional Natural
  , ipv6_addresses : Optional (List Text)
  , network_interface_id : Optional Text
  , private_ip_address : Optional Text
  , security_groups : Optional (List Text)
  , subnet_id : Optional Text
  }

let NetworkInterfacesRequired = {}
let NetworkInterfaces = NetworkInterfacesOptional //\\ NetworkInterfacesRequired

let PlacementOptional =
  { affinity : Optional Text
  , availability_zone : Optional Text
  , group_name : Optional Text
  , host_id : Optional Text
  , spread_domain : Optional Text
  , tenancy : Optional Text
  }

let PlacementRequired = {}
let Placement = PlacementOptional //\\ PlacementRequired

let TagSpecificationsOptional =
  { resource_type : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let TagSpecificationsRequired = {}
let TagSpecifications = TagSpecificationsOptional //\\ TagSpecificationsRequired

let AwsLaunchTemplateOptional =
  { description : Optional Text
  , disable_api_termination : Optional Bool
  , ebs_optimized : Optional Text
  , image_id : Optional Text
  , instance_initiated_shutdown_behavior : Optional Text
  , instance_type : Optional Text
  , kernel_id : Optional Text
  , key_name : Optional Text
  , name : Optional Text
  , name_prefix : Optional Text
  , ram_disk_id : Optional Text
  , security_group_names : Optional (List Text)
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , user_data : Optional Text
  , vpc_security_group_ids : Optional (List Text)
  , block_device_mappings : Optional (List BlockDeviceMappings)
  , capacity_reservation_specification : Optional CapacityReservationSpecification
  , credit_specification : Optional CreditSpecification
  , elastic_gpu_specifications : Optional (List ElasticGpuSpecifications)
  , iam_instance_profile : Optional IamInstanceProfile
  , instance_market_options : Optional InstanceMarketOptions
  , license_specification : Optional (List LicenseSpecification)
  , monitoring : Optional Monitoring
  , network_interfaces : Optional (List NetworkInterfaces)
  , placement : Optional Placement
  , tag_specifications : Optional (List TagSpecifications)
  }

let AwsLaunchTemplateRequired = {}
let AwsLaunchTemplate = AwsLaunchTemplateOptional //\\ AwsLaunchTemplateRequired

in
{ AwsLaunchTemplateOptional = AwsLaunchTemplateOptional
, AwsLaunchTemplateRequired = AwsLaunchTemplateRequired
, AwsLaunchTemplate = AwsLaunchTemplate
, TagSpecificationsOptional = TagSpecificationsOptional
, TagSpecificationsRequired = TagSpecificationsRequired
, TagSpecifications = TagSpecifications
, PlacementOptional = PlacementOptional
, PlacementRequired = PlacementRequired
, Placement = Placement
, NetworkInterfacesOptional = NetworkInterfacesOptional
, NetworkInterfacesRequired = NetworkInterfacesRequired
, NetworkInterfaces = NetworkInterfaces
, MonitoringOptional = MonitoringOptional
, MonitoringRequired = MonitoringRequired
, Monitoring = Monitoring
, LicenseSpecification = LicenseSpecification
, InstanceMarketOptionsOptional = InstanceMarketOptionsOptional
, InstanceMarketOptionsRequired = InstanceMarketOptionsRequired
, InstanceMarketOptions = InstanceMarketOptions
, SpotOptionsOptional = SpotOptionsOptional
, SpotOptionsRequired = SpotOptionsRequired
, SpotOptions = SpotOptions
, IamInstanceProfileOptional = IamInstanceProfileOptional
, IamInstanceProfileRequired = IamInstanceProfileRequired
, IamInstanceProfile = IamInstanceProfile
, ElasticGpuSpecifications = ElasticGpuSpecifications
, CreditSpecificationOptional = CreditSpecificationOptional
, CreditSpecificationRequired = CreditSpecificationRequired
, CreditSpecification = CreditSpecification
, CapacityReservationSpecificationOptional = CapacityReservationSpecificationOptional
, CapacityReservationSpecificationRequired = CapacityReservationSpecificationRequired
, CapacityReservationSpecification = CapacityReservationSpecification
, CapacityReservationTargetOptional = CapacityReservationTargetOptional
, CapacityReservationTargetRequired = CapacityReservationTargetRequired
, CapacityReservationTarget = CapacityReservationTarget
, BlockDeviceMappingsOptional = BlockDeviceMappingsOptional
, BlockDeviceMappingsRequired = BlockDeviceMappingsRequired
, BlockDeviceMappings = BlockDeviceMappings
, EbsOptional = EbsOptional
, EbsRequired = EbsRequired
, Ebs = Ebs
}
