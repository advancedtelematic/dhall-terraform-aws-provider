
let fieldToMatch =
  { data = None Text }

let sizeConstraints = {}

let awsWafregionalSizeConstraintSet =
  { size_constraints = None (List (../dhall/aws_wafregional_size_constraint_set.dhall).SizeConstraints) }

in
{ awsWafregionalSizeConstraintSet = awsWafregionalSizeConstraintSet
, fieldToMatch = fieldToMatch
}
