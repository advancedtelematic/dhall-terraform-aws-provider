
let MinimumHealthyHostsOptional =
  { type: Optional Text
  , value: Optional Natural
  }

let MinimumHealthyHostsRequired = {}
let MinimumHealthyHosts = MinimumHealthyHostsOptional //\\ MinimumHealthyHostsRequired

let TimeBasedCanaryOptional =
  { interval: Optional Natural
  , percentage: Optional Natural
  }

let TimeBasedCanaryRequired = {}
let TimeBasedCanary = TimeBasedCanaryOptional //\\ TimeBasedCanaryRequired

let TimeBasedLinearOptional =
  { interval: Optional Natural
  , percentage: Optional Natural
  }

let TimeBasedLinearRequired = {}
let TimeBasedLinear = TimeBasedLinearOptional //\\ TimeBasedLinearRequired

let TrafficRoutingConfigOptional =
  { type: Optional Text
  , time_based_canary: Optional TimeBasedCanary
  , time_based_linear: Optional TimeBasedLinear
  }

let TrafficRoutingConfigRequired = {}
let TrafficRoutingConfig = TrafficRoutingConfigOptional //\\ TrafficRoutingConfigRequired

let AwsCodedeployDeploymentConfigOptional =
  { compute_platform: Optional Text
  , minimum_healthy_hosts: Optional MinimumHealthyHosts
  , traffic_routing_config: Optional TrafficRoutingConfig
  }

let AwsCodedeployDeploymentConfigRequired =
  { deployment_config_name: Text }
let AwsCodedeployDeploymentConfig = AwsCodedeployDeploymentConfigOptional //\\ AwsCodedeployDeploymentConfigRequired

in
{ AwsCodedeployDeploymentConfigOptional = AwsCodedeployDeploymentConfigOptional
, AwsCodedeployDeploymentConfigRequired = AwsCodedeployDeploymentConfigRequired
, AwsCodedeployDeploymentConfig = AwsCodedeployDeploymentConfig
, TrafficRoutingConfigOptional = TrafficRoutingConfigOptional
, TrafficRoutingConfigRequired = TrafficRoutingConfigRequired
, TrafficRoutingConfig = TrafficRoutingConfig
, TimeBasedLinearOptional = TimeBasedLinearOptional
, TimeBasedLinearRequired = TimeBasedLinearRequired
, TimeBasedLinear = TimeBasedLinear
, TimeBasedCanaryOptional = TimeBasedCanaryOptional
, TimeBasedCanaryRequired = TimeBasedCanaryRequired
, TimeBasedCanary = TimeBasedCanary
, MinimumHealthyHostsOptional = MinimumHealthyHostsOptional
, MinimumHealthyHostsRequired = MinimumHealthyHostsRequired
, MinimumHealthyHosts = MinimumHealthyHosts
}
