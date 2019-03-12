
let EbsVolumeOptional =
  { iops : Optional Natural
  , raid_level : Optional Text
  , type : Optional Text
  }

let EbsVolumeRequired =
  { mount_point : Text
  , number_of_disks : Natural
  , size : Natural
  }
let EbsVolume = EbsVolumeOptional //\\ EbsVolumeRequired

let AwsOpsworksHaproxyLayerOptional =
  { auto_assign_elastic_ips : Optional Bool
  , auto_assign_public_ips : Optional Bool
  , auto_healing : Optional Bool
  , custom_configure_recipes : Optional (List Text)
  , custom_deploy_recipes : Optional (List Text)
  , custom_instance_profile_arn : Optional Text
  , custom_json : Optional Text
  , custom_security_group_ids : Optional (List Text)
  , custom_setup_recipes : Optional (List Text)
  , custom_shutdown_recipes : Optional (List Text)
  , custom_undeploy_recipes : Optional (List Text)
  , drain_elb_on_shutdown : Optional Bool
  , elastic_load_balancer : Optional Text
  , healthcheck_method : Optional Text
  , healthcheck_url : Optional Text
  , install_updates_on_boot : Optional Bool
  , instance_shutdown_timeout : Optional Natural
  , name : Optional Text
  , stats_enabled : Optional Bool
  , stats_url : Optional Text
  , stats_user : Optional Text
  , system_packages : Optional (List Text)
  , use_ebs_optimized_instances : Optional Bool
  , ebs_volume : Optional (List EbsVolume)
  }

let AwsOpsworksHaproxyLayerRequired =
  { stack_id : Text
  , stats_password : Text
  }
let AwsOpsworksHaproxyLayer = AwsOpsworksHaproxyLayerOptional //\\ AwsOpsworksHaproxyLayerRequired

in
{ AwsOpsworksHaproxyLayerOptional = AwsOpsworksHaproxyLayerOptional
, AwsOpsworksHaproxyLayerRequired = AwsOpsworksHaproxyLayerRequired
, AwsOpsworksHaproxyLayer = AwsOpsworksHaproxyLayer
, EbsVolumeOptional = EbsVolumeOptional
, EbsVolumeRequired = EbsVolumeRequired
, EbsVolume = EbsVolume
}
