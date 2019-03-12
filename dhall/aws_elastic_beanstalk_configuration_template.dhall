
let SettingOptional =
  { resource : Optional Text }

let SettingRequired =
  { name : Text
  , namespace : Text
  , value : Text
  }
let Setting = SettingOptional //\\ SettingRequired

let AwsElasticBeanstalkConfigurationTemplateOptional =
  { description : Optional Text
  , environment_id : Optional Text
  , solution_stack_name : Optional Text
  , setting : Optional (List Setting)
  }

let AwsElasticBeanstalkConfigurationTemplateRequired =
  { application : Text
  , name : Text
  }
let AwsElasticBeanstalkConfigurationTemplate = AwsElasticBeanstalkConfigurationTemplateOptional //\\ AwsElasticBeanstalkConfigurationTemplateRequired

in
{ AwsElasticBeanstalkConfigurationTemplateOptional = AwsElasticBeanstalkConfigurationTemplateOptional
, AwsElasticBeanstalkConfigurationTemplateRequired = AwsElasticBeanstalkConfigurationTemplateRequired
, AwsElasticBeanstalkConfigurationTemplate = AwsElasticBeanstalkConfigurationTemplate
, SettingOptional = SettingOptional
, SettingRequired = SettingRequired
, Setting = Setting
}
