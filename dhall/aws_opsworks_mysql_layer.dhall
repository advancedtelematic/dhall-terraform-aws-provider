
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

let AwsOpsworksMysqlLayerOptional =
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
  , install_updates_on_boot : Optional Bool
  , instance_shutdown_timeout : Optional Natural
  , name : Optional Text
  , root_password : Optional Text
  , root_password_on_all_instances : Optional Bool
  , system_packages : Optional (List Text)
  , use_ebs_optimized_instances : Optional Bool
  , ebs_volume : Optional (List EbsVolume)
  }

let AwsOpsworksMysqlLayerRequired =
  { stack_id : Text }
let AwsOpsworksMysqlLayer = AwsOpsworksMysqlLayerOptional //\\ AwsOpsworksMysqlLayerRequired

in
{ AwsOpsworksMysqlLayerOptional = AwsOpsworksMysqlLayerOptional
, AwsOpsworksMysqlLayerRequired = AwsOpsworksMysqlLayerRequired
, AwsOpsworksMysqlLayer = AwsOpsworksMysqlLayer
, EbsVolumeOptional = EbsVolumeOptional
, EbsVolumeRequired = EbsVolumeRequired
, EbsVolume = EbsVolume
}
