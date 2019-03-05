
let RoutingStrategyOptional =
  { fleet_id: Optional Text
  , message: Optional Text
  }

let RoutingStrategyRequired =
  { type: Text }
let RoutingStrategy = RoutingStrategyOptional //\\ RoutingStrategyRequired

let AwsGameliftAliasOptional =
  { arn: Optional Text
  , description: Optional Text
  }

let AwsGameliftAliasRequired =
  { name: Text
  , routing_strategy: RoutingStrategy
  }
let AwsGameliftAlias = AwsGameliftAliasOptional //\\ AwsGameliftAliasRequired

in
{ AwsGameliftAliasOptional = AwsGameliftAliasOptional
, AwsGameliftAliasRequired = AwsGameliftAliasRequired
, AwsGameliftAlias = AwsGameliftAlias
, RoutingStrategyOptional = RoutingStrategyOptional
, RoutingStrategyRequired = RoutingStrategyRequired
, RoutingStrategy = RoutingStrategy
}
