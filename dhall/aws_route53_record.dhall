
let AliasOptional = {}

let AliasRequired =
  { evaluate_target_health : Bool
  , name : Text
  , zone_id : Text
  }
let Alias = AliasOptional //\\ AliasRequired

let FailoverRoutingPolicyOptional = {}

let FailoverRoutingPolicyRequired =
  { type : Text }
let FailoverRoutingPolicy = FailoverRoutingPolicyOptional //\\ FailoverRoutingPolicyRequired

let GeolocationRoutingPolicyOptional =
  { continent : Optional Text
  , country : Optional Text
  , subdivision : Optional Text
  }

let GeolocationRoutingPolicyRequired = {}
let GeolocationRoutingPolicy = GeolocationRoutingPolicyOptional //\\ GeolocationRoutingPolicyRequired

let LatencyRoutingPolicyOptional = {}

let LatencyRoutingPolicyRequired =
  { region : Text }
let LatencyRoutingPolicy = LatencyRoutingPolicyOptional //\\ LatencyRoutingPolicyRequired

let WeightedRoutingPolicyOptional = {}

let WeightedRoutingPolicyRequired =
  { weight : Natural }
let WeightedRoutingPolicy = WeightedRoutingPolicyOptional //\\ WeightedRoutingPolicyRequired

let AwsRoute53RecordOptional =
  { allow_overwrite : Optional Bool
  , health_check_id : Optional Text
  , multivalue_answer_routing_policy : Optional Bool
  , records : Optional (List Text)
  , set_identifier : Optional Text
  , ttl : Optional Natural
  , alias : Optional (List Alias)
  , failover_routing_policy : Optional (List FailoverRoutingPolicy)
  , geolocation_routing_policy : Optional (List GeolocationRoutingPolicy)
  , latency_routing_policy : Optional (List LatencyRoutingPolicy)
  , weighted_routing_policy : Optional (List WeightedRoutingPolicy)
  }

let AwsRoute53RecordRequired =
  { name : Text
  , type : Text
  , zone_id : Text
  }
let AwsRoute53Record = AwsRoute53RecordOptional //\\ AwsRoute53RecordRequired

in
{ AwsRoute53RecordOptional = AwsRoute53RecordOptional
, AwsRoute53RecordRequired = AwsRoute53RecordRequired
, AwsRoute53Record = AwsRoute53Record
, WeightedRoutingPolicy = WeightedRoutingPolicy
, LatencyRoutingPolicy = LatencyRoutingPolicy
, GeolocationRoutingPolicyOptional = GeolocationRoutingPolicyOptional
, GeolocationRoutingPolicyRequired = GeolocationRoutingPolicyRequired
, GeolocationRoutingPolicy = GeolocationRoutingPolicy
, FailoverRoutingPolicy = FailoverRoutingPolicy
, Alias = Alias
}
