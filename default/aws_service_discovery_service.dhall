
let dnsRecords = {}

let dnsConfig =
  { routing_policy = None Text }

let healthCheckConfig =
  { failure_threshold = None Natural
  , resource_path = None Text
  , type = None Text
  }

let healthCheckCustomConfig =
  { failure_threshold = None Natural }

let awsServiceDiscoveryService =
  { description = None Text
  , health_check_config = None (../dhall/aws_service_discovery_service.dhall).HealthCheckConfig
  , health_check_custom_config = None (../dhall/aws_service_discovery_service.dhall).HealthCheckCustomConfig
  }

in
{ awsServiceDiscoveryService = awsServiceDiscoveryService
, healthCheckCustomConfig = healthCheckCustomConfig
, healthCheckConfig = healthCheckConfig
, dnsConfig = dnsConfig
}
