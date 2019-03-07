
let DnsRecordsOptional = {}

let DnsRecordsRequired =
  { ttl: Natural
  , type: Text
  }
let DnsRecords = DnsRecordsOptional //\\ DnsRecordsRequired

let DnsConfigOptional =
  { routing_policy: Optional Text }

let DnsConfigRequired =
  { namespace_id: Text
  , dns_records: List DnsRecords
  }
let DnsConfig = DnsConfigOptional //\\ DnsConfigRequired

let HealthCheckConfigOptional =
  { failure_threshold: Optional Natural
  , resource_path: Optional Text
  , type: Optional Text
  }

let HealthCheckConfigRequired = {}
let HealthCheckConfig = HealthCheckConfigOptional //\\ HealthCheckConfigRequired

let HealthCheckCustomConfigOptional =
  { failure_threshold: Optional Natural }

let HealthCheckCustomConfigRequired = {}
let HealthCheckCustomConfig = HealthCheckCustomConfigOptional //\\ HealthCheckCustomConfigRequired

let AwsServiceDiscoveryServiceOptional =
  { description: Optional Text
  , health_check_config: Optional HealthCheckConfig
  , health_check_custom_config: Optional HealthCheckCustomConfig
  }

let AwsServiceDiscoveryServiceRequired =
  { name: Text
  , dns_config: DnsConfig
  }
let AwsServiceDiscoveryService = AwsServiceDiscoveryServiceOptional //\\ AwsServiceDiscoveryServiceRequired

in
{ AwsServiceDiscoveryServiceOptional = AwsServiceDiscoveryServiceOptional
, AwsServiceDiscoveryServiceRequired = AwsServiceDiscoveryServiceRequired
, AwsServiceDiscoveryService = AwsServiceDiscoveryService
, HealthCheckCustomConfigOptional = HealthCheckCustomConfigOptional
, HealthCheckCustomConfigRequired = HealthCheckCustomConfigRequired
, HealthCheckCustomConfig = HealthCheckCustomConfig
, HealthCheckConfigOptional = HealthCheckConfigOptional
, HealthCheckConfigRequired = HealthCheckConfigRequired
, HealthCheckConfig = HealthCheckConfig
, DnsConfigOptional = DnsConfigOptional
, DnsConfigRequired = DnsConfigRequired
, DnsConfig = DnsConfig
, DnsRecords = DnsRecords
}
