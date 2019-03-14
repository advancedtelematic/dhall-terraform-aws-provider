
let setting =
  { resource = None Text }

let awsElasticBeanstalkConfigurationTemplate =
  { description = None Text
  , environment_id = None Text
  , solution_stack_name = None Text
  , setting = None (List (../dhall/aws_elastic_beanstalk_configuration_template.dhall).Setting)
  }

in
{ awsElasticBeanstalkConfigurationTemplate = awsElasticBeanstalkConfigurationTemplate
, setting = setting
}
