
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

let AwsWafSizeConstraintSetOptional =
  { size_constraints: Optional (List SizeConstraints) }

let AwsWafSizeConstraintSetRequired =
  { name: Text }
let AwsWafSizeConstraintSet = AwsWafSizeConstraintSetOptional //\\ AwsWafSizeConstraintSetRequired

in
{ AwsWafSizeConstraintSetOptional = AwsWafSizeConstraintSetOptional
, AwsWafSizeConstraintSetRequired = AwsWafSizeConstraintSetRequired
, AwsWafSizeConstraintSet = AwsWafSizeConstraintSet
, SizeConstraints = SizeConstraints
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
}
