
let allSettings =
  { resource = None Text }

let setting =
  { resource = None Text }

let awsElasticBeanstalkEnvironment =
  { cname_prefix = None Text
  , description = None Text
  , platform_arn = None Text
  , poll_interval = None Text
  , solution_stack_name = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , template_name = None Text
  , tier = None Text
  , version_label = None Text
  , wait_for_ready_timeout = None Text
  , all_settings = None (List (../dhall/aws_elastic_beanstalk_environment.dhall).AllSettings)
  , setting = None (List (../dhall/aws_elastic_beanstalk_environment.dhall).Setting)
  }

in
{ awsElasticBeanstalkEnvironment = awsElasticBeanstalkEnvironment
, setting = setting
, allSettings = allSettings
}
