
let AwsVpcEndpointServiceOptional =
  { allowed_principals: Optional (List Text)
  , availability_zones: Optional (List Text)
  , base_endpoint_dns_names: Optional (List Text)
  , private_dns_name: Optional Text
  , service_name: Optional Text
  , service_type: Optional Text
  , state: Optional Text
  }

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
