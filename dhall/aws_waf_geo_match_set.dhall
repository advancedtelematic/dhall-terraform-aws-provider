
let GeoMatchConstraintOptional = {}

let GeoMatchConstraintRequired =
  { type: Text
  , value: Text
  }
let GeoMatchConstraint = GeoMatchConstraintOptional //\\ GeoMatchConstraintRequired

let AwsWafGeoMatchSetOptional =
  { geo_match_constraint: Optional (List GeoMatchConstraint) }

let AwsWafGeoMatchSetRequired =
  { name: Text }
let AwsWafGeoMatchSet = AwsWafGeoMatchSetOptional //\\ AwsWafGeoMatchSetRequired

in
{ AwsWafGeoMatchSetOptional = AwsWafGeoMatchSetOptional
, AwsWafGeoMatchSetRequired = AwsWafGeoMatchSetRequired
, AwsWafGeoMatchSet = AwsWafGeoMatchSet
, GeoMatchConstraint = GeoMatchConstraint
}
