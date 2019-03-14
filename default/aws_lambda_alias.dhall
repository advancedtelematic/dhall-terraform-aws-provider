
let routingConfig =
  { additional_version_weights = None (List { mapKey : Natural, mapValue : Double }) }

let awsLambdaAlias =
  { description = None Text
  , routing_config = None (../dhall/aws_lambda_alias.dhall).RoutingConfig
  }

in
{ awsLambdaAlias = awsLambdaAlias
, routingConfig = routingConfig
}
