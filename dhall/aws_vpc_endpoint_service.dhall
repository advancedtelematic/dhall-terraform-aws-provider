
let AwsVpcEndpointServiceOptional =
  { allowed_principals: Optional (List Text) }

let AwsVpcEndpointServiceRequired =
  { acceptance_required: Bool
  , network_load_balancer_arns: (List Text)
  }
let AwsVpcEndpointService = AwsVpcEndpointServiceOptional //\\ AwsVpcEndpointServiceRequired

in
{ AwsVpcEndpointServiceOptional = AwsVpcEndpointServiceOptional
, AwsVpcEndpointServiceRequired = AwsVpcEndpointServiceRequired
, AwsVpcEndpointService = AwsVpcEndpointService
}
