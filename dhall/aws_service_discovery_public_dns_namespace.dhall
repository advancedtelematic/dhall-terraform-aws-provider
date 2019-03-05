
let AwsServiceDiscoveryPublicDnsNamespaceOptional =
  { arn: Optional Text
  , description: Optional Text
  , hosted_zone: Optional Text
  }

let AwsServiceDiscoveryPublicDnsNamespaceRequired =
  { name: Text }
let AwsServiceDiscoveryPublicDnsNamespace = AwsServiceDiscoveryPublicDnsNamespaceOptional //\\ AwsServiceDiscoveryPublicDnsNamespaceRequired

in
{ AwsServiceDiscoveryPublicDnsNamespaceOptional = AwsServiceDiscoveryPublicDnsNamespaceOptional
, AwsServiceDiscoveryPublicDnsNamespaceRequired = AwsServiceDiscoveryPublicDnsNamespaceRequired
, AwsServiceDiscoveryPublicDnsNamespace = AwsServiceDiscoveryPublicDnsNamespace
}
