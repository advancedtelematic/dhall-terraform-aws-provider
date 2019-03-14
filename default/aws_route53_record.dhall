
let alias = {}

let failoverRoutingPolicy = {}

let geolocationRoutingPolicy =
  { continent = None Text
  , country = None Text
  , subdivision = None Text
  }

let latencyRoutingPolicy = {}

let weightedRoutingPolicy = {}

let awsRoute53Record =
  { allow_overwrite = None Bool
  , health_check_id = None Text
  , multivalue_answer_routing_policy = None Bool
  , records = None (List Text)
  , set_identifier = None Text
  , ttl = None Natural
  , alias = None (List (../dhall/aws_route53_record.dhall).Alias)
  , failover_routing_policy = None (List (../dhall/aws_route53_record.dhall).FailoverRoutingPolicy)
  , geolocation_routing_policy = None (List (../dhall/aws_route53_record.dhall).GeolocationRoutingPolicy)
  , latency_routing_policy = None (List (../dhall/aws_route53_record.dhall).LatencyRoutingPolicy)
  , weighted_routing_policy = None (List (../dhall/aws_route53_record.dhall).WeightedRoutingPolicy)
  }

in
{ awsRoute53Record = awsRoute53Record
, geolocationRoutingPolicy = geolocationRoutingPolicy
}
