
let parameter =
  { apply_method = None Text }

let awsNeptuneParameterGroup =
  { description = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , parameter = None (List (../dhall/aws_neptune_parameter_group.dhall).Parameter)
  }

in
{ awsNeptuneParameterGroup = awsNeptuneParameterGroup
, parameter = parameter
}
