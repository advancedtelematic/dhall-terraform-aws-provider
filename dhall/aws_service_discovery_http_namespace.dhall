
let AwsServiceDiscoveryHttpNamespaceOptional =
  { description: Optional Text }

let AwsServiceDiscoveryHttpNamespaceRequired =
  { name: Text }
let AwsServiceDiscoveryHttpNamespace = AwsServiceDiscoveryHttpNamespaceOptional //\\ AwsServiceDiscoveryHttpNamespaceRequired

in
{ AwsServiceDiscoveryHttpNamespaceOptional = AwsServiceDiscoveryHttpNamespaceOptional
, AwsServiceDiscoveryHttpNamespaceRequired = AwsServiceDiscoveryHttpNamespaceRequired
, AwsServiceDiscoveryHttpNamespace = AwsServiceDiscoveryHttpNamespace
}
