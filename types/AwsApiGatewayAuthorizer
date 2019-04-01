
let AwsApiGatewayAuthorizerOptional =
  { authorizer_credentials : Optional Text
  , authorizer_result_ttl_in_seconds : Optional Natural
  , authorizer_uri : Optional Text
  , identity_source : Optional Text
  , identity_validation_expression : Optional Text
  , provider_arns : Optional (List Text)
  , type : Optional Text
  }

let AwsApiGatewayAuthorizerRequired =
  { name : Text
  , rest_api_id : Text
  }
let AwsApiGatewayAuthorizer = AwsApiGatewayAuthorizerOptional //\\ AwsApiGatewayAuthorizerRequired

in
{ AwsApiGatewayAuthorizerOptional = AwsApiGatewayAuthorizerOptional
, AwsApiGatewayAuthorizerRequired = AwsApiGatewayAuthorizerRequired
, AwsApiGatewayAuthorizer = AwsApiGatewayAuthorizer
}
