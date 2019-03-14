
let parameter = {}

let awsRedshiftParameterGroup =
  { description = None Text
  , parameter = None (List (../dhall/aws_redshift_parameter_group.dhall).Parameter)
  }

in
{ awsRedshiftParameterGroup = awsRedshiftParameterGroup
}
