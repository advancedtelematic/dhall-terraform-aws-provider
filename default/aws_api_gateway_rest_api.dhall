
let endpointConfiguration = {}

let awsApiGatewayRestApi =
  { api_key_source = None Text
  , binary_media_types = None (List Text)
  , body = None Text
  , description = None Text
  , minimum_compression_size = None Natural
  , policy = None Text
  }

in
{ awsApiGatewayRestApi = awsApiGatewayRestApi
}
