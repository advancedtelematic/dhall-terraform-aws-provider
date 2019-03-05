
let AwsVpcEndpointServiceAllowedPrincipalOptional = {}

let AwsVpcEndpointServiceAllowedPrincipalRequired =
  { principal_arn: Text
  , vpc_endpoint_service_id: Text
  }
let AwsVpcEndpointServiceAllowedPrincipal = AwsVpcEndpointServiceAllowedPrincipalOptional //\\ AwsVpcEndpointServiceAllowedPrincipalRequired

in
{ AwsVpcEndpointServiceAllowedPrincipal = AwsVpcEndpointServiceAllowedPrincipal
}
