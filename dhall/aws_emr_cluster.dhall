
let BootstrapActionOptional =
  { args : Optional (List Text) }

let BootstrapActionRequired =
  { name : Text
  , path : Text
  }
let BootstrapAction = BootstrapActionOptional //\\ BootstrapActionRequired

let Ec2AttributesOptional =
  { additional_master_security_groups : Optional Text
  , additional_slave_security_groups : Optional Text
  , emr_managed_master_security_group : Optional Text
  , emr_managed_slave_security_group : Optional Text
  , key_name : Optional Text
  , service_access_security_group : Optional Text
  , subnet_id : Optional Text
  }

let Ec2AttributesRequired =
  { instance_profile : Text }
let Ec2Attributes = Ec2AttributesOptional //\\ Ec2AttributesRequired

let EbsConfigOptional =
  { iops : Optional Natural
  , volumes_per_instance : Optional Natural
  }

let EbsConfigRequired =
  { size : Natural
  , type : Text
  }
let EbsConfig = EbsConfigOptional //\\ EbsConfigRequired

let InstanceGroupOptional =
  { autoscaling_policy : Optional Text
  , bid_price : Optional Text
  , instance_count : Optional Natural
  , name : Optional Text
  , ebs_config : Optional (List EbsConfig)
  }

let InstanceGroupRequired =
  { instance_role : Text
  , instance_type : Text
  }
let InstanceGroup = InstanceGroupOptional //\\ InstanceGroupRequired

let KerberosAttributesOptional =
  { ad_domain_join_password : Optional Text
  , ad_domain_join_user : Optional Text
  , cross_realm_trust_principal_password : Optional Text
  }

let KerberosAttributesRequired =
  { kdc_admin_password : Text
  , realm : Text
  }
let KerberosAttributes = KerberosAttributesOptional //\\ KerberosAttributesRequired

let HadoopJarStepOptional =
  { args : Optional (List Text)
  , main_class : Optional Text
  , properties : Optional (List { mapKey : Text, mapValue : Text })
  }

let HadoopJarStepRequired =
  { jar : Text }
let HadoopJarStep = HadoopJarStepOptional //\\ HadoopJarStepRequired

let StepOptional = {}

let StepRequired =
  { action_on_failure : Text
  , name : Text
  , hadoop_jar_step : HadoopJarStep
  }
let Step = StepOptional //\\ StepRequired

let AwsEmrClusterOptional =
  { additional_info : Optional Text
  , applications : Optional (List Text)
  , autoscaling_role : Optional Text
  , configurations : Optional Text
  , configurations_json : Optional Text
  , core_instance_count : Optional Natural
  , core_instance_type : Optional Text
  , custom_ami_id : Optional Text
  , ebs_root_volume_size : Optional Natural
  , keep_job_flow_alive_when_no_steps : Optional Bool
  , log_uri : Optional Text
  , master_instance_type : Optional Text
  , scale_down_behavior : Optional Text
  , security_configuration : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , termination_protection : Optional Bool
  , visible_to_all_users : Optional Bool
  , bootstrap_action : Optional (List BootstrapAction)
  , ec2_attributes : Optional Ec2Attributes
  , instance_group : Optional (List InstanceGroup)
  , kerberos_attributes : Optional KerberosAttributes
  , step : Optional (List Step)
  }

let AwsEmrClusterRequired =
  { name : Text
  , release_label : Text
  , service_role : Text
  }
let AwsEmrCluster = AwsEmrClusterOptional //\\ AwsEmrClusterRequired

in
{ AwsEmrClusterOptional = AwsEmrClusterOptional
, AwsEmrClusterRequired = AwsEmrClusterRequired
, AwsEmrCluster = AwsEmrCluster
, Step = Step
, HadoopJarStepOptional = HadoopJarStepOptional
, HadoopJarStepRequired = HadoopJarStepRequired
, HadoopJarStep = HadoopJarStep
, KerberosAttributesOptional = KerberosAttributesOptional
, KerberosAttributesRequired = KerberosAttributesRequired
, KerberosAttributes = KerberosAttributes
, InstanceGroupOptional = InstanceGroupOptional
, InstanceGroupRequired = InstanceGroupRequired
, InstanceGroup = InstanceGroup
, EbsConfigOptional = EbsConfigOptional
, EbsConfigRequired = EbsConfigRequired
, EbsConfig = EbsConfig
, Ec2AttributesOptional = Ec2AttributesOptional
, Ec2AttributesRequired = Ec2AttributesRequired
, Ec2Attributes = Ec2Attributes
, BootstrapActionOptional = BootstrapActionOptional
, BootstrapActionRequired = BootstrapActionRequired
, BootstrapAction = BootstrapAction
}
