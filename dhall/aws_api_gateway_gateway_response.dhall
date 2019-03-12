
let AwsApiGatewayGatewayResponseOptional =
  { response_parameters : Optional (List { mapKey : Text, mapValue : Text })
  , response_templates : Optional (List { mapKey : Text, mapValue : Text })
  , status_code : Optional Text
  }

let AwsApiGatewayGatewayResponseRequired =
  { response_type : Text
  , rest_api_id : Text
  }
let AwsApiGatewayGatewayResponse = AwsApiGatewayGatewayResponseOptional //\\ AwsApiGatewayGatewayResponseRequired

in
{ AwsApiGatewayGatewayResponseOptional = AwsApiGatewayGatewayResponseOptional
, AwsApiGatewayGatewayResponseRequired = AwsApiGatewayGatewayResponseRequired
, AwsApiGatewayGatewayResponse = AwsApiGatewayGatewayResponse
}
