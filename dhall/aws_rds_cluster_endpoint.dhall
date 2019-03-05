
let AwsRdsClusterEndpointOptional =
  { arn: Optional Text
  , endpoint: Optional Text
  , excluded_members: Optional (List Text)
  , static_members: Optional (List Text)
  }

let AwsRdsClusterEndpointRequired =
  { cluster_endpoint_identifier: Text
  , cluster_identifier: Text
  , custom_endpoint_type: Text
  }
let AwsRdsClusterEndpoint = AwsRdsClusterEndpointOptional //\\ AwsRdsClusterEndpointRequired

in
{ AwsRdsClusterEndpointOptional = AwsRdsClusterEndpointOptional
, AwsRdsClusterEndpointRequired = AwsRdsClusterEndpointRequired
, AwsRdsClusterEndpoint = AwsRdsClusterEndpoint
}
