
let StageKeyOptional = {}

let StageKeyRequired =
  { rest_api_id: Text
  , stage_name: Text
  }
let StageKey = StageKeyOptional //\\ StageKeyRequired

let AwsApiGatewayApiKeyOptional =
  { created_date: Optional Text
  , description: Optional Text
  , enabled: Optional Bool
  , last_updated_date: Optional Text
  , value: Optional Text
  , stage_key: Optional (List StageKey)
  }

let AwsApiGatewayApiKeyRequired =
  { name: Text }
let AwsApiGatewayApiKey = AwsApiGatewayApiKeyOptional //\\ AwsApiGatewayApiKeyRequired

in
{ AwsApiGatewayApiKeyOptional = AwsApiGatewayApiKeyOptional
, AwsApiGatewayApiKeyRequired = AwsApiGatewayApiKeyRequired
, AwsApiGatewayApiKey = AwsApiGatewayApiKey
, StageKey = StageKey
}
