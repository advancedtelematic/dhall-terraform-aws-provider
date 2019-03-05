
let AttributesOptional =
  { flow_logs_enabled: Optional Bool
  , flow_logs_s3_bucket: Optional Text
  , flow_logs_s3_prefix: Optional Text
  }

let AttributesRequired = {}
let Attributes = AttributesOptional //\\ AttributesRequired

let IpSetsOptional =
  { ip_addresses: Optional (List Text)
  , ip_family: Optional Text
  }

let IpSetsRequired = {}
let IpSets = IpSetsOptional //\\ IpSetsRequired

let AwsGlobalacceleratorAcceleratorOptional =
  { enabled: Optional Bool
  , ip_address_type: Optional Text
  , attributes: Optional Attributes
  , ip_sets: Optional (List IpSets)
  }

let AwsGlobalacceleratorAcceleratorRequired =
  { name: Text }
let AwsGlobalacceleratorAccelerator = AwsGlobalacceleratorAcceleratorOptional //\\ AwsGlobalacceleratorAcceleratorRequired

in
{ AwsGlobalacceleratorAcceleratorOptional = AwsGlobalacceleratorAcceleratorOptional
, AwsGlobalacceleratorAcceleratorRequired = AwsGlobalacceleratorAcceleratorRequired
, AwsGlobalacceleratorAccelerator = AwsGlobalacceleratorAccelerator
, IpSetsOptional = IpSetsOptional
, IpSetsRequired = IpSetsRequired
, IpSets = IpSets
, AttributesOptional = AttributesOptional
, AttributesRequired = AttributesRequired
, Attributes = Attributes
}
