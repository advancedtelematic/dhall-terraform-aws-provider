
let ebsVolume =
  { iops = None Natural
  , raid_level = None Text
  , type = None Text
  }

let awsOpsworksHaproxyLayer =
  { auto_assign_elastic_ips = None Bool
  , auto_assign_public_ips = None Bool
  , auto_healing = None Bool
  , custom_configure_recipes = None (List Text)
  , custom_deploy_recipes = None (List Text)
  , custom_instance_profile_arn = None Text
  , custom_json = None Text
  , custom_security_group_ids = None (List Text)
  , custom_setup_recipes = None (List Text)
  , custom_shutdown_recipes = None (List Text)
  , custom_undeploy_recipes = None (List Text)
  , drain_elb_on_shutdown = None Bool
  , elastic_load_balancer = None Text
  , healthcheck_method = None Text
  , healthcheck_url = None Text
  , install_updates_on_boot = None Bool
  , instance_shutdown_timeout = None Natural
  , name = None Text
  , stats_enabled = None Bool
  , stats_url = None Text
  , stats_user = None Text
  , system_packages = None (List Text)
  , use_ebs_optimized_instances = None Bool
  , ebs_volume = None (List (../dhall/aws_opsworks_haproxy_layer.dhall).EbsVolume)
  }

in
{ awsOpsworksHaproxyLayer = awsOpsworksHaproxyLayer
, ebsVolume = ebsVolume
}
