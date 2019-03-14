
let alarmConfiguration =
  { alarms = None (List Text)
  , enabled = None Bool
  , ignore_poll_alarm_failure = None Bool
  }

let autoRollbackConfiguration =
  { enabled = None Bool
  , events = None (List Text)
  }

let deploymentReadyOption =
  { action_on_timeout = None Text
  , wait_time_in_minutes = None Natural
  }

let greenFleetProvisioningOption =
  { action = None Text }

let terminateBlueInstancesOnDeploymentSuccess =
  { action = None Text
  , termination_wait_time_in_minutes = None Natural
  }

let blueGreenDeploymentConfig =
  { deployment_ready_option = None (../dhall/aws_codedeploy_deployment_group.dhall).DeploymentReadyOption
  , green_fleet_provisioning_option = None (../dhall/aws_codedeploy_deployment_group.dhall).GreenFleetProvisioningOption
  , terminate_blue_instances_on_deployment_success = None (../dhall/aws_codedeploy_deployment_group.dhall).TerminateBlueInstancesOnDeploymentSuccess
  }

let deploymentStyle =
  { deployment_option = None Text
  , deployment_type = None Text
  }

let ec2TagFilter =
  { key = None Text
  , type = None Text
  , value = None Text
  }

let ec2TagFilter =
  { key = None Text
  , type = None Text
  , value = None Text
  }

let ec2TagSet =
  { ec2_tag_filter = None (List (../dhall/aws_codedeploy_deployment_group.dhall).Ec2TagFilter) }

let ecsService = {}

let elbInfo =
  { name = None Text }

let targetGroupInfo =
  { name = None Text }

let prodTrafficRoute = {}

let targetGroup = {}

let testTrafficRoute = {}

let targetGroupPairInfo =
  { test_traffic_route = None (../dhall/aws_codedeploy_deployment_group.dhall).TestTrafficRoute }

let loadBalancerInfo =
  { elb_info = None (List (../dhall/aws_codedeploy_deployment_group.dhall).ElbInfo)
  , target_group_info = None (List (../dhall/aws_codedeploy_deployment_group.dhall).TargetGroupInfo)
  , target_group_pair_info = None (../dhall/aws_codedeploy_deployment_group.dhall).TargetGroupPairInfo
  }

let onPremisesInstanceTagFilter =
  { key = None Text
  , type = None Text
  , value = None Text
  }

let triggerConfiguration = {}

let awsCodedeployDeploymentGroup =
  { autoscaling_groups = None (List Text)
  , deployment_config_name = None Text
  , alarm_configuration = None (../dhall/aws_codedeploy_deployment_group.dhall).AlarmConfiguration
  , auto_rollback_configuration = None (../dhall/aws_codedeploy_deployment_group.dhall).AutoRollbackConfiguration
  , blue_green_deployment_config = None (../dhall/aws_codedeploy_deployment_group.dhall).BlueGreenDeploymentConfig
  , deployment_style = None (../dhall/aws_codedeploy_deployment_group.dhall).DeploymentStyle
  , ec2_tag_filter = None (List (../dhall/aws_codedeploy_deployment_group.dhall).Ec2TagFilter)
  , ec2_tag_set = None (List (../dhall/aws_codedeploy_deployment_group.dhall).Ec2TagSet)
  , ecs_service = None (../dhall/aws_codedeploy_deployment_group.dhall).EcsService
  , load_balancer_info = None (../dhall/aws_codedeploy_deployment_group.dhall).LoadBalancerInfo
  , on_premises_instance_tag_filter = None (List (../dhall/aws_codedeploy_deployment_group.dhall).OnPremisesInstanceTagFilter)
  , trigger_configuration = None (List (../dhall/aws_codedeploy_deployment_group.dhall).TriggerConfiguration)
  }

in
{ awsCodedeployDeploymentGroup = awsCodedeployDeploymentGroup
, onPremisesInstanceTagFilter = onPremisesInstanceTagFilter
, loadBalancerInfo = loadBalancerInfo
, targetGroupPairInfo = targetGroupPairInfo
, targetGroupInfo = targetGroupInfo
, elbInfo = elbInfo
, ec2TagSet = ec2TagSet
, ec2TagFilter = ec2TagFilter
, ec2TagFilter = ec2TagFilter
, deploymentStyle = deploymentStyle
, blueGreenDeploymentConfig = blueGreenDeploymentConfig
, terminateBlueInstancesOnDeploymentSuccess = terminateBlueInstancesOnDeploymentSuccess
, greenFleetProvisioningOption = greenFleetProvisioningOption
, deploymentReadyOption = deploymentReadyOption
, autoRollbackConfiguration = autoRollbackConfiguration
, alarmConfiguration = alarmConfiguration
}
