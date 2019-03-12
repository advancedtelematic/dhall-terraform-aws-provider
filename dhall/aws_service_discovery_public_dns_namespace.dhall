
let AwsServiceDiscoveryPublicDnsNamespaceOptional =
  { description : Optional Text }

let AwsServiceDiscoveryPublicDnsNamespaceRequired =
  { name : Text }
let AwsServiceDiscoveryPublicDnsNamespace = AwsServiceDiscoveryPublicDnsNamespaceOptional //\\ AwsServiceDiscoveryPublicDnsNamespaceRequired

in
{ AwsServiceDiscoveryPublicDnsNamespaceOptional = AwsServiceDiscoveryPublicDnsNamespaceOptional
, AwsServiceDiscoveryPublicDnsNamespaceRequired = AwsServiceDiscoveryPublicDnsNamespaceRequired
, AwsServiceDiscoveryPublicDnsNamespace = AwsServiceDiscoveryPublicDnsNamespace
}
