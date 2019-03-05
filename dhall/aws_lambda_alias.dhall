
let RoutingConfigOptional =
  { additional_version_weights: Optional (List { mapKey : Natural, mapValue : Double }) }

let RoutingConfigRequired = {}
let RoutingConfig = RoutingConfigOptional //\\ RoutingConfigRequired

let AwsLambdaAliasOptional =
  { arn: Optional Text
  , description: Optional Text
  , invoke_arn: Optional Text
  , routing_config: Optional RoutingConfig
  }

let AwsLambdaAliasRequired =
  { function_name: Text
  , function_version: Text
  , name: Text
  }
let AwsLambdaAlias = AwsLambdaAliasOptional //\\ AwsLambdaAliasRequired

in
{ AwsLambdaAliasOptional = AwsLambdaAliasOptional
, AwsLambdaAliasRequired = AwsLambdaAliasRequired
, AwsLambdaAlias = AwsLambdaAlias
, RoutingConfigOptional = RoutingConfigOptional
, RoutingConfigRequired = RoutingConfigRequired
, RoutingConfig = RoutingConfig
}
