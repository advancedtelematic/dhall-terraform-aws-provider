
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

let AwsOpsworksMemcachedLayerOptional =
  { allocated_memory : Optional Natural
  , auto_assign_elastic_ips : Optional Bool
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
  , install_updates_on_boot : Optional Bool
  , instance_shutdown_timeout : Optional Natural
  , name : Optional Text
  , system_packages : Optional (List Text)
  , use_ebs_optimized_instances : Optional Bool
  , ebs_volume : Optional (List EbsVolume)
  }

let AwsOpsworksMemcachedLayerRequired =
  { stack_id : Text }
let AwsOpsworksMemcachedLayer = AwsOpsworksMemcachedLayerOptional //\\ AwsOpsworksMemcachedLayerRequired

in
{ AwsOpsworksMemcachedLayerOptional = AwsOpsworksMemcachedLayerOptional
, AwsOpsworksMemcachedLayerRequired = AwsOpsworksMemcachedLayerRequired
, AwsOpsworksMemcachedLayer = AwsOpsworksMemcachedLayer
, EbsVolumeOptional = EbsVolumeOptional
, EbsVolumeRequired = EbsVolumeRequired
, EbsVolume = EbsVolume
}
