
let fieldToMatch =
  { data = None Text }

let sizeConstraints = {}

let awsWafSizeConstraintSet =
  { size_constraints = None (List (../dhall/aws_waf_size_constraint_set.dhall).SizeConstraints) }

in
{ awsWafSizeConstraintSet = awsWafSizeConstraintSet
, fieldToMatch = fieldToMatch
}
