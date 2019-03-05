
let AlarmConfigurationOptional =
  { alarms: Optional (List Text)
  , enabled: Optional Bool
  , ignore_poll_alarm_failure: Optional Bool
  }

let AlarmConfigurationRequired = {}
let AlarmConfiguration = AlarmConfigurationOptional //\\ AlarmConfigurationRequired

let AutoRollbackConfigurationOptional =
  { enabled: Optional Bool
  , events: Optional (List Text)
  }

let AutoRollbackConfigurationRequired = {}
let AutoRollbackConfiguration = AutoRollbackConfigurationOptional //\\ AutoRollbackConfigurationRequired

let DeploymentReadyOptionOptional =
  { action_on_timeout: Optional Text
  , wait_time_in_minutes: Optional Natural
  }

let DeploymentReadyOptionRequired = {}
let DeploymentReadyOption = DeploymentReadyOptionOptional //\\ DeploymentReadyOptionRequired

let GreenFleetProvisioningOptionOptional =
  { action: Optional Text }

let GreenFleetProvisioningOptionRequired = {}
let GreenFleetProvisioningOption = GreenFleetProvisioningOptionOptional //\\ GreenFleetProvisioningOptionRequired

let TerminateBlueInstancesOnDeploymentSuccessOptional =
  { action: Optional Text
  , termination_wait_time_in_minutes: Optional Natural
  }

let TerminateBlueInstancesOnDeploymentSuccessRequired = {}
let TerminateBlueInstancesOnDeploymentSuccess = TerminateBlueInstancesOnDeploymentSuccessOptional //\\ TerminateBlueInstancesOnDeploymentSuccessRequired

let BlueGreenDeploymentConfigOptional =
  { deployment_ready_option: Optional DeploymentReadyOption
  , green_fleet_provisioning_option: Optional GreenFleetProvisioningOption
  , terminate_blue_instances_on_deployment_success: Optional TerminateBlueInstancesOnDeploymentSuccess
  }

let BlueGreenDeploymentConfigRequired = {}
let BlueGreenDeploymentConfig = BlueGreenDeploymentConfigOptional //\\ BlueGreenDeploymentConfigRequired

let DeploymentStyleOptional =
  { deployment_option: Optional Text
  , deployment_type: Optional Text
  }

let DeploymentStyleRequired = {}
let DeploymentStyle = DeploymentStyleOptional //\\ DeploymentStyleRequired

let Ec2TagFilterOptional =
  { key: Optional Text
  , type: Optional Text
  , value: Optional Text
  }

let Ec2TagFilterRequired = {}
let Ec2TagFilter = Ec2TagFilterOptional //\\ Ec2TagFilterRequired

let Ec2TagFilterOptional =
  { key: Optional Text
  , type: Optional Text
  , value: Optional Text
  }

let Ec2TagFilterRequired = {}
let Ec2TagFilter = Ec2TagFilterOptional //\\ Ec2TagFilterRequired

let Ec2TagSetOptional =
  { ec2_tag_filter: Optional (List Ec2TagFilter) }

let Ec2TagSetRequired = {}
let Ec2TagSet = Ec2TagSetOptional //\\ Ec2TagSetRequired

let EcsServiceOptional = {}

let EcsServiceRequired =
  { cluster_name: Text
  , service_name: Text
  }
let EcsService = EcsServiceOptional //\\ EcsServiceRequired

let ElbInfoOptional =
  { name: Optional Text }

let ElbInfoRequired = {}
let ElbInfo = ElbInfoOptional //\\ ElbInfoRequired

let TargetGroupInfoOptional =
  { name: Optional Text }

let TargetGroupInfoRequired = {}
let TargetGroupInfo = TargetGroupInfoOptional //\\ TargetGroupInfoRequired

let ProdTrafficRouteOptional = {}

let ProdTrafficRouteRequired =
  { listener_arns: (List Text) }
let ProdTrafficRoute = ProdTrafficRouteOptional //\\ ProdTrafficRouteRequired

let TargetGroupOptional = {}

let TargetGroupRequired =
  { name: Text }
let TargetGroup = TargetGroupOptional //\\ TargetGroupRequired

let TestTrafficRouteOptional = {}

let TestTrafficRouteRequired =
  { listener_arns: (List Text) }
let TestTrafficRoute = TestTrafficRouteOptional //\\ TestTrafficRouteRequired

let TargetGroupPairInfoOptional =
  { test_traffic_route: Optional TestTrafficRoute }

let TargetGroupPairInfoRequired =
  { prod_traffic_route: ProdTrafficRoute
  , target_group: List List TargetGroup
  }
let TargetGroupPairInfo = TargetGroupPairInfoOptional //\\ TargetGroupPairInfoRequired

let LoadBalancerInfoOptional =
  { elb_info: Optional (List ElbInfo)
  , target_group_info: Optional (List TargetGroupInfo)
  , target_group_pair_info: Optional TargetGroupPairInfo
  }

let LoadBalancerInfoRequired = {}
let LoadBalancerInfo = LoadBalancerInfoOptional //\\ LoadBalancerInfoRequired

let OnPremisesInstanceTagFilterOptional =
  { key: Optional Text
  , type: Optional Text
  , value: Optional Text
  }

let OnPremisesInstanceTagFilterRequired = {}
let OnPremisesInstanceTagFilter = OnPremisesInstanceTagFilterOptional //\\ OnPremisesInstanceTagFilterRequired

let TriggerConfigurationOptional = {}

let TriggerConfigurationRequired =
  { trigger_events: (List Text)
  , trigger_name: Text
  , trigger_target_arn: Text
  }
let TriggerConfiguration = TriggerConfigurationOptional //\\ TriggerConfigurationRequired

let AwsCodedeployDeploymentGroupOptional =
  { autoscaling_groups: Optional (List Text)
  , deployment_config_name: Optional Text
  , alarm_configuration: Optional AlarmConfiguration
  , auto_rollback_configuration: Optional AutoRollbackConfiguration
  , blue_green_deployment_config: Optional BlueGreenDeploymentConfig
  , deployment_style: Optional DeploymentStyle
  , ec2_tag_filter: Optional (List Ec2TagFilter)
  , ec2_tag_set: Optional (List Ec2TagSet)
  , ecs_service: Optional EcsService
  , load_balancer_info: Optional LoadBalancerInfo
  , on_premises_instance_tag_filter: Optional (List OnPremisesInstanceTagFilter)
  , trigger_configuration: Optional (List TriggerConfiguration)
  }

let AwsCodedeployDeploymentGroupRequired =
  { app_name: Text
  , deployment_group_name: Text
  , service_role_arn: Text
  }
let AwsCodedeployDeploymentGroup = AwsCodedeployDeploymentGroupOptional //\\ AwsCodedeployDeploymentGroupRequired

in
{ AwsCodedeployDeploymentGroupOptional = AwsCodedeployDeploymentGroupOptional
, AwsCodedeployDeploymentGroupRequired = AwsCodedeployDeploymentGroupRequired
, AwsCodedeployDeploymentGroup = AwsCodedeployDeploymentGroup
, TriggerConfiguration = TriggerConfiguration
, OnPremisesInstanceTagFilterOptional = OnPremisesInstanceTagFilterOptional
, OnPremisesInstanceTagFilterRequired = OnPremisesInstanceTagFilterRequired
, OnPremisesInstanceTagFilter = OnPremisesInstanceTagFilter
, LoadBalancerInfoOptional = LoadBalancerInfoOptional
, LoadBalancerInfoRequired = LoadBalancerInfoRequired
, LoadBalancerInfo = LoadBalancerInfo
, TargetGroupPairInfoOptional = TargetGroupPairInfoOptional
, TargetGroupPairInfoRequired = TargetGroupPairInfoRequired
, TargetGroupPairInfo = TargetGroupPairInfo
, TestTrafficRoute = TestTrafficRoute
, TargetGroup = TargetGroup
, ProdTrafficRoute = ProdTrafficRoute
, TargetGroupInfoOptional = TargetGroupInfoOptional
, TargetGroupInfoRequired = TargetGroupInfoRequired
, TargetGroupInfo = TargetGroupInfo
, ElbInfoOptional = ElbInfoOptional
, ElbInfoRequired = ElbInfoRequired
, ElbInfo = ElbInfo
, EcsService = EcsService
, Ec2TagSetOptional = Ec2TagSetOptional
, Ec2TagSetRequired = Ec2TagSetRequired
, Ec2TagSet = Ec2TagSet
, Ec2TagFilterOptional = Ec2TagFilterOptional
, Ec2TagFilterRequired = Ec2TagFilterRequired
, Ec2TagFilter = Ec2TagFilter
, Ec2TagFilterOptional = Ec2TagFilterOptional
, Ec2TagFilterRequired = Ec2TagFilterRequired
, Ec2TagFilter = Ec2TagFilter
, DeploymentStyleOptional = DeploymentStyleOptional
, DeploymentStyleRequired = DeploymentStyleRequired
, DeploymentStyle = DeploymentStyle
, BlueGreenDeploymentConfigOptional = BlueGreenDeploymentConfigOptional
, BlueGreenDeploymentConfigRequired = BlueGreenDeploymentConfigRequired
, BlueGreenDeploymentConfig = BlueGreenDeploymentConfig
, TerminateBlueInstancesOnDeploymentSuccessOptional = TerminateBlueInstancesOnDeploymentSuccessOptional
, TerminateBlueInstancesOnDeploymentSuccessRequired = TerminateBlueInstancesOnDeploymentSuccessRequired
, TerminateBlueInstancesOnDeploymentSuccess = TerminateBlueInstancesOnDeploymentSuccess
, GreenFleetProvisioningOptionOptional = GreenFleetProvisioningOptionOptional
, GreenFleetProvisioningOptionRequired = GreenFleetProvisioningOptionRequired
, GreenFleetProvisioningOption = GreenFleetProvisioningOption
, DeploymentReadyOptionOptional = DeploymentReadyOptionOptional
, DeploymentReadyOptionRequired = DeploymentReadyOptionRequired
, DeploymentReadyOption = DeploymentReadyOption
, AutoRollbackConfigurationOptional = AutoRollbackConfigurationOptional
, AutoRollbackConfigurationRequired = AutoRollbackConfigurationRequired
, AutoRollbackConfiguration = AutoRollbackConfiguration
, AlarmConfigurationOptional = AlarmConfigurationOptional
, AlarmConfigurationRequired = AlarmConfigurationRequired
, AlarmConfiguration = AlarmConfiguration
}
