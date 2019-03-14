
let parameter =
  { apply_method = None Text }

let awsNeptuneClusterParameterGroup =
  { description = None Text
  , name = None Text
  , name_prefix = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , parameter = None (List (../dhall/aws_neptune_cluster_parameter_group.dhall).Parameter)
  }

in
{ awsNeptuneClusterParameterGroup = awsNeptuneClusterParameterGroup
, parameter = parameter
}
