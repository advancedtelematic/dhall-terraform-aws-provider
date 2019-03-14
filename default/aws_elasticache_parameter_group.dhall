
let parameter = {}

let awsElasticacheParameterGroup =
  { description = None Text
  , parameter = None (List (../dhall/aws_elasticache_parameter_group.dhall).Parameter)
  }

in
{ awsElasticacheParameterGroup = awsElasticacheParameterGroup
}
