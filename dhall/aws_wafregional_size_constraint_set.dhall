
let FieldToMatchOptional =
  { data: Optional Text }

let FieldToMatchRequired =
  { type: Text }
let FieldToMatch = FieldToMatchOptional //\\ FieldToMatchRequired

let SizeConstraintsOptional = {}

let SizeConstraintsRequired =
  { comparison_operator: Text
  , size: Natural
  , text_transformation: Text
  , field_to_match: FieldToMatch
  }
let SizeConstraints = SizeConstraintsOptional //\\ SizeConstraintsRequired

let AwsWafregionalSizeConstraintSetOptional =
  { size_constraints: Optional (List SizeConstraints) }

let AwsWafregionalSizeConstraintSetRequired =
  { name: Text }
let AwsWafregionalSizeConstraintSet = AwsWafregionalSizeConstraintSetOptional //\\ AwsWafregionalSizeConstraintSetRequired

in
{ AwsWafregionalSizeConstraintSetOptional = AwsWafregionalSizeConstraintSetOptional
, AwsWafregionalSizeConstraintSetRequired = AwsWafregionalSizeConstraintSetRequired
, AwsWafregionalSizeConstraintSet = AwsWafregionalSizeConstraintSet
, SizeConstraints = SizeConstraints
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
}
