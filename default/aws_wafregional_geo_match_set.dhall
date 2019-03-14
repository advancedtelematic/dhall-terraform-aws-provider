
let geoMatchConstraint = {}

let awsWafregionalGeoMatchSet =
  { geo_match_constraint = None (List (../dhall/aws_wafregional_geo_match_set.dhall).GeoMatchConstraint) }

in
{ awsWafregionalGeoMatchSet = awsWafregionalGeoMatchSet
}
