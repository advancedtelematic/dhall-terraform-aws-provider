
let bootstrapAction =
  { args = None (List Text) }

let ec2Attributes =
  { additional_master_security_groups = None Text
  , additional_slave_security_groups = None Text
  , emr_managed_master_security_group = None Text
  , emr_managed_slave_security_group = None Text
  , key_name = None Text
  , service_access_security_group = None Text
  , subnet_id = None Text
  }

let ebsConfig =
  { iops = None Natural
  , volumes_per_instance = None Natural
  }

let instanceGroup =
  { autoscaling_policy = None Text
  , bid_price = None Text
  , instance_count = None Natural
  , name = None Text
  , ebs_config = None (List (../dhall/aws_emr_cluster.dhall).EbsConfig)
  }

let kerberosAttributes =
  { ad_domain_join_password = None Text
  , ad_domain_join_user = None Text
  , cross_realm_trust_principal_password = None Text
  }

let hadoopJarStep =
  { args = None (List Text)
  , main_class = None Text
  , properties = None (List { mapKey : Text, mapValue : Text })
  }

let step = {}

let awsEmrCluster =
  { additional_info = None Text
  , applications = None (List Text)
  , autoscaling_role = None Text
  , configurations = None Text
  , configurations_json = None Text
  , core_instance_count = None Natural
  , core_instance_type = None Text
  , custom_ami_id = None Text
  , ebs_root_volume_size = None Natural
  , keep_job_flow_alive_when_no_steps = None Bool
  , log_uri = None Text
  , master_instance_type = None Text
  , scale_down_behavior = None Text
  , security_configuration = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , termination_protection = None Bool
  , visible_to_all_users = None Bool
  , bootstrap_action = None (List (../dhall/aws_emr_cluster.dhall).BootstrapAction)
  , ec2_attributes = None (../dhall/aws_emr_cluster.dhall).Ec2Attributes
  , instance_group = None (List (../dhall/aws_emr_cluster.dhall).InstanceGroup)
  , kerberos_attributes = None (../dhall/aws_emr_cluster.dhall).KerberosAttributes
  , step = None (List (../dhall/aws_emr_cluster.dhall).Step)
  }

in
{ awsEmrCluster = awsEmrCluster
, hadoopJarStep = hadoopJarStep
, kerberosAttributes = kerberosAttributes
, instanceGroup = instanceGroup
, ebsConfig = ebsConfig
, ec2Attributes = ec2Attributes
, bootstrapAction = bootstrapAction
}
