
let WeightedTargetOptional = {}

let WeightedTargetRequired =
  { virtual_node: Text
  , weight: Natural
  }
let WeightedTarget = WeightedTargetOptional //\\ WeightedTargetRequired

let ActionOptional = {}

let ActionRequired =
  { weighted_target: List List WeightedTarget }
let Action = ActionOptional //\\ ActionRequired

let MatchOptional = {}

let MatchRequired =
  { prefix: Text }
let Match = MatchOptional //\\ MatchRequired

let HttpRouteOptional = {}

let HttpRouteRequired =
  { action: Action
  , match: Match
  }
let HttpRoute = HttpRouteOptional //\\ HttpRouteRequired

let SpecOptional =
  { http_route: Optional HttpRoute }

let SpecRequired = {}
let Spec = SpecOptional //\\ SpecRequired

let AwsAppmeshRouteOptional =
  { arn: Optional Text
  , created_date: Optional Text
  , last_updated_date: Optional Text
  }

let AwsAppmeshRouteRequired =
  { mesh_name: Text
  , name: Text
  , virtual_router_name: Text
  , spec: Spec
  }
let AwsAppmeshRoute = AwsAppmeshRouteOptional //\\ AwsAppmeshRouteRequired

in
{ AwsAppmeshRouteOptional = AwsAppmeshRouteOptional
, AwsAppmeshRouteRequired = AwsAppmeshRouteRequired
, AwsAppmeshRoute = AwsAppmeshRoute
, SpecOptional = SpecOptional
, SpecRequired = SpecRequired
, Spec = Spec
, HttpRoute = HttpRoute
, Match = Match
, Action = Action
, WeightedTarget = WeightedTarget
}
