
let parameter =
  { apply_method = None Text }

let awsDbParameterGroup =
  { description = None Text
  , name = None Text
  , name_prefix = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , parameter = None (List (../dhall/aws_db_parameter_group.dhall).Parameter)
  }

in
{ awsDbParameterGroup = awsDbParameterGroup
, parameter = parameter
}
