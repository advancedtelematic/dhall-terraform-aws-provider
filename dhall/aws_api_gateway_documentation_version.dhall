
let AwsApiGatewayDocumentationVersionOptional =
  { description: Optional Text }

let AwsApiGatewayDocumentationVersionRequired =
  { rest_api_id: Text
  , version: Text
  }
let AwsApiGatewayDocumentationVersion = AwsApiGatewayDocumentationVersionOptional //\\ AwsApiGatewayDocumentationVersionRequired

in
{ AwsApiGatewayDocumentationVersionOptional = AwsApiGatewayDocumentationVersionOptional
, AwsApiGatewayDocumentationVersionRequired = AwsApiGatewayDocumentationVersionRequired
, AwsApiGatewayDocumentationVersion = AwsApiGatewayDocumentationVersion
}
