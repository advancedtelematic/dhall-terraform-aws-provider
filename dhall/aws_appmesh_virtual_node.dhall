
let HealthCheckOptional =
  { path : Optional Text
  , port : Optional Natural
  }

let HealthCheckRequired =
  { healthy_threshold : Natural
  , interval_millis : Natural
  , protocol : Text
  , timeout_millis : Natural
  , unhealthy_threshold : Natural
  }
let HealthCheck = HealthCheckOptional //\\ HealthCheckRequired

let PortMappingOptional = {}

let PortMappingRequired =
  { port : Natural
  , protocol : Text
  }
let PortMapping = PortMappingOptional //\\ PortMappingRequired

let ListenerOptional = {}

let ListenerRequired =
  { health_check : HealthCheck
  , port_mapping : PortMapping
  }
let Listener = ListenerOptional //\\ ListenerRequired

let DnsOptional = {}

let DnsRequired =
  { service_name : Text }
let Dns = DnsOptional //\\ DnsRequired

let ServiceDiscoveryOptional = {}

let ServiceDiscoveryRequired =
  { dns : Dns }
let ServiceDiscovery = ServiceDiscoveryOptional //\\ ServiceDiscoveryRequired

let SpecOptional =
  { backends : Optional (List Text)
  , listener : Optional Listener
  , service_discovery : Optional ServiceDiscovery
  }

let SpecRequired = {}
let Spec = SpecOptional //\\ SpecRequired

let AwsAppmeshVirtualNodeOptional = {}

let AwsAppmeshVirtualNodeRequired =
  { mesh_name : Text
  , name : Text
  , spec : Spec
  }
let AwsAppmeshVirtualNode = AwsAppmeshVirtualNodeOptional //\\ AwsAppmeshVirtualNodeRequired

in
{ AwsAppmeshVirtualNode = AwsAppmeshVirtualNode
, SpecOptional = SpecOptional
, SpecRequired = SpecRequired
, Spec = Spec
, ServiceDiscovery = ServiceDiscovery
, Dns = Dns
, Listener = Listener
, PortMapping = PortMapping
, HealthCheckOptional = HealthCheckOptional
, HealthCheckRequired = HealthCheckRequired
, HealthCheck = HealthCheck
}
