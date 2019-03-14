
let routingStrategy =
  { fleet_id = None Text
  , message = None Text
  }

let awsGameliftAlias =
  { description = None Text }

in
{ awsGameliftAlias = awsGameliftAlias
, routingStrategy = routingStrategy
}
