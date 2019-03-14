
let minimumHealthyHosts =
  { type = None Text
  , value = None Natural
  }

let timeBasedCanary =
  { interval = None Natural
  , percentage = None Natural
  }

let timeBasedLinear =
  { interval = None Natural
  , percentage = None Natural
  }

let trafficRoutingConfig =
  { type = None Text
  , time_based_canary = None (../dhall/aws_codedeploy_deployment_config.dhall).TimeBasedCanary
  , time_based_linear = None (../dhall/aws_codedeploy_deployment_config.dhall).TimeBasedLinear
  }

let awsCodedeployDeploymentConfig =
  { compute_platform = None Text
  , minimum_healthy_hosts = None (../dhall/aws_codedeploy_deployment_config.dhall).MinimumHealthyHosts
  , traffic_routing_config = None (../dhall/aws_codedeploy_deployment_config.dhall).TrafficRoutingConfig
  }

in
{ awsCodedeployDeploymentConfig = awsCodedeployDeploymentConfig
, trafficRoutingConfig = trafficRoutingConfig
, timeBasedLinear = timeBasedLinear
, timeBasedCanary = timeBasedCanary
, minimumHealthyHosts = minimumHealthyHosts
}
