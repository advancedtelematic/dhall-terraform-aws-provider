
let AwsServiceDiscoveryPrivateDnsNamespaceOptional =
  { arn: Optional Text
  , description: Optional Text
  , hosted_zone: Optional Text
  }

let AwsServiceDiscoveryPrivateDnsNamespaceRequired =
  { name: Text
  , vpc: Text
  }
let AwsServiceDiscoveryPrivateDnsNamespace = AwsServiceDiscoveryPrivateDnsNamespaceOptional //\\ AwsServiceDiscoveryPrivateDnsNamespaceRequired

in
{ AwsServiceDiscoveryPrivateDnsNamespaceOptional = AwsServiceDiscoveryPrivateDnsNamespaceOptional
, AwsServiceDiscoveryPrivateDnsNamespaceRequired = AwsServiceDiscoveryPrivateDnsNamespaceRequired
, AwsServiceDiscoveryPrivateDnsNamespace = AwsServiceDiscoveryPrivateDnsNamespace
}
