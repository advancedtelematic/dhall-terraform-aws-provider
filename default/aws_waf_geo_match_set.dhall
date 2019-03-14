
let geoMatchConstraint = {}

let awsWafGeoMatchSet =
  { geo_match_constraint = None (List (../dhall/aws_waf_geo_match_set.dhall).GeoMatchConstraint) }

in
{ awsWafGeoMatchSet = awsWafGeoMatchSet
}
