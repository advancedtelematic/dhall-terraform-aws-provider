
let AccessLogsOptional =
  { enabled: Optional Bool
  , prefix: Optional Text
  }

let AccessLogsRequired =
  { bucket: Text }
let AccessLogs = AccessLogsOptional //\\ AccessLogsRequired

let SubnetMappingOptional =
  { allocation_id: Optional Text }

let SubnetMappingRequired =
  { subnet_id: Text }
let SubnetMapping = SubnetMappingOptional //\\ SubnetMappingRequired

let AwsLbOptional =
  { enable_cross_zone_load_balancing: Optional Bool
  , enable_deletion_protection: Optional Bool
  , enable_http2: Optional Bool
  , idle_timeout: Optional Natural
  , internal: Optional Bool
  , ip_address_type: Optional Text
  , load_balancer_type: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , security_groups: Optional (List Text)
  , subnets: Optional (List Text)
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , access_logs: Optional AccessLogs
  , subnet_mapping: Optional (List SubnetMapping)
  }

let AwsLbRequired = {}
let AwsLb = AwsLbOptional //\\ AwsLbRequired

in
{ AwsLbOptional = AwsLbOptional
, AwsLbRequired = AwsLbRequired
, AwsLb = AwsLb
, SubnetMappingOptional = SubnetMappingOptional
, SubnetMappingRequired = SubnetMappingRequired
, SubnetMapping = SubnetMapping
, AccessLogsOptional = AccessLogsOptional
, AccessLogsRequired = AccessLogsRequired
, AccessLogs = AccessLogs
}
