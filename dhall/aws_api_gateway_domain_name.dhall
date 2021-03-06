
let EndpointConfigurationOptional = {}

let EndpointConfigurationRequired =
  { types : (List Text) }
let EndpointConfiguration = EndpointConfigurationOptional //\\ EndpointConfigurationRequired

let AwsApiGatewayDomainNameOptional =
  { certificate_arn : Optional Text
  , certificate_body : Optional Text
  , certificate_chain : Optional Text
  , certificate_name : Optional Text
  , certificate_private_key : Optional Text
  , regional_certificate_arn : Optional Text
  , regional_certificate_name : Optional Text
  }

let AwsApiGatewayDomainNameRequired =
  { domain_name : Text
  , endpoint_configuration : EndpointConfiguration
  }
let AwsApiGatewayDomainName = AwsApiGatewayDomainNameOptional //\\ AwsApiGatewayDomainNameRequired

in
{ AwsApiGatewayDomainNameOptional = AwsApiGatewayDomainNameOptional
, AwsApiGatewayDomainNameRequired = AwsApiGatewayDomainNameRequired
, AwsApiGatewayDomainName = AwsApiGatewayDomainName
, EndpointConfiguration = EndpointConfiguration
}
