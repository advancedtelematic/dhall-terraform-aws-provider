
let AwsApiGatewayUsagePlanKeyOptional =
  { name: Optional Text
  , value: Optional Text
  }

let AwsApiGatewayUsagePlanKeyRequired =
  { key_id: Text
  , key_type: Text
  , usage_plan_id: Text
  }
let AwsApiGatewayUsagePlanKey = AwsApiGatewayUsagePlanKeyOptional //\\ AwsApiGatewayUsagePlanKeyRequired

in
{ AwsApiGatewayUsagePlanKeyOptional = AwsApiGatewayUsagePlanKeyOptional
, AwsApiGatewayUsagePlanKeyRequired = AwsApiGatewayUsagePlanKeyRequired
, AwsApiGatewayUsagePlanKey = AwsApiGatewayUsagePlanKey
}
