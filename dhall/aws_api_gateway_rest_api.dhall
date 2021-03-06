
let EndpointConfigurationOptional = {}

let EndpointConfigurationRequired =
  { types : (List Text) }
let EndpointConfiguration = EndpointConfigurationOptional //\\ EndpointConfigurationRequired

let AwsApiGatewayRestApiOptional =
  { api_key_source : Optional Text
  , binary_media_types : Optional (List Text)
  , body : Optional Text
  , description : Optional Text
  , minimum_compression_size : Optional Natural
  , policy : Optional Text
  }

let AwsApiGatewayRestApiRequired =
  { name : Text
  , endpoint_configuration : EndpointConfiguration
  }
let AwsApiGatewayRestApi = AwsApiGatewayRestApiOptional //\\ AwsApiGatewayRestApiRequired

in
{ AwsApiGatewayRestApiOptional = AwsApiGatewayRestApiOptional
, AwsApiGatewayRestApiRequired = AwsApiGatewayRestApiRequired
, AwsApiGatewayRestApi = AwsApiGatewayRestApi
, EndpointConfiguration = EndpointConfiguration
}
