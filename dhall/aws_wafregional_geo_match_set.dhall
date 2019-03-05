
let GeoMatchConstraintOptional = {}

let GeoMatchConstraintRequired =
  { type: Text
  , value: Text
  }
let GeoMatchConstraint = GeoMatchConstraintOptional //\\ GeoMatchConstraintRequired

let AwsWafregionalGeoMatchSetOptional =
  { geo_match_constraint: Optional (List GeoMatchConstraint) }

let AwsWafregionalGeoMatchSetRequired =
  { name: Text }
let AwsWafregionalGeoMatchSet = AwsWafregionalGeoMatchSetOptional //\\ AwsWafregionalGeoMatchSetRequired

in
{ AwsWafregionalGeoMatchSetOptional = AwsWafregionalGeoMatchSetOptional
, AwsWafregionalGeoMatchSetRequired = AwsWafregionalGeoMatchSetRequired
, AwsWafregionalGeoMatchSet = AwsWafregionalGeoMatchSet
, GeoMatchConstraint = GeoMatchConstraint
}
