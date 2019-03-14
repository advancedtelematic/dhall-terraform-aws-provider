
let parameters = {}

let awsDaxParameterGroup =
  { description = None Text
  , parameters = None (List (../dhall/aws_dax_parameter_group.dhall).Parameters)
  }

in
{ awsDaxParameterGroup = awsDaxParameterGroup
}
