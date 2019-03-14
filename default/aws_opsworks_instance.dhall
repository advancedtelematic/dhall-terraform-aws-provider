
let ebsBlockDevice =
  { delete_on_termination = None Bool
  , iops = None Natural
  , snapshot_id = None Text
  , volume_size = None Natural
  , volume_type = None Text
  }

let ephemeralBlockDevice = {}

let rootBlockDevice =
  { delete_on_termination = None Bool
  , iops = None Natural
  , volume_size = None Natural
  , volume_type = None Text
  }

let awsOpsworksInstance =
  { agent_version = None Text
  , ami_id = None Text
  , architecture = None Text
  , auto_scaling_type = None Text
  , availability_zone = None Text
  , created_at = None Text
  , delete_ebs = None Bool
  , delete_eip = None Bool
  , ebs_optimized = None Bool
  , ecs_cluster_arn = None Text
  , elastic_ip = None Text
  , hostname = None Text
  , infrastructure_class = None Text
  , install_updates_on_boot = None Bool
  , instance_profile_arn = None Text
  , instance_type = None Text
  , last_service_error_id = None Text
  , os = None Text
  , platform = None Text
  , private_dns = None Text
  , private_ip = None Text
  , public_dns = None Text
  , public_ip = None Text
  , registered_by = None Text
  , reported_agent_version = None Text
  , reported_os_family = None Text
  , reported_os_name = None Text
  , reported_os_version = None Text
  , root_device_type = None Text
  , root_device_volume_id = None Text
  , security_group_ids = None (List Text)
  , ssh_host_dsa_key_fingerprint = None Text
  , ssh_host_rsa_key_fingerprint = None Text
  , ssh_key_name = None Text
  , state = None Text
  , status = None Text
  , subnet_id = None Text
  , tenancy = None Text
  , virtualization_type = None Text
  , ebs_block_device = None (List (../dhall/aws_opsworks_instance.dhall).EbsBlockDevice)
  , ephemeral_block_device = None (List (../dhall/aws_opsworks_instance.dhall).EphemeralBlockDevice)
  , root_block_device = None (List (../dhall/aws_opsworks_instance.dhall).RootBlockDevice)
  }

in
{ awsOpsworksInstance = awsOpsworksInstance
, rootBlockDevice = rootBlockDevice
, ebsBlockDevice = ebsBlockDevice
}
