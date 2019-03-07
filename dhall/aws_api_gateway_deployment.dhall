
let AwsApiGatewayDeploymentOptional =
  { description: Optional Text
  , stage_description: Optional Text
  , variables: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsApiGatewayDeploymentRequired =
  { rest_api_id: Text
  , stage_name: Text
  }
let AwsApiGatewayDeployment = AwsApiGatewayDeploymentOptional //\\ AwsApiGatewayDeploymentRequired

in
{ AwsApiGatewayDeploymentOptional = AwsApiGatewayDeploymentOptional
, AwsApiGatewayDeploymentRequired = AwsApiGatewayDeploymentRequired
, AwsApiGatewayDeployment = AwsApiGatewayDeployment
}
