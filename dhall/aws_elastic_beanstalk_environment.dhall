
let AllSettingsOptional =
  { resource : Optional Text }

let AllSettingsRequired =
  { name : Text
  , namespace : Text
  , value : Text
  }
let AllSettings = AllSettingsOptional //\\ AllSettingsRequired

let SettingOptional =
  { resource : Optional Text }

let SettingRequired =
  { name : Text
  , namespace : Text
  , value : Text
  }
let Setting = SettingOptional //\\ SettingRequired

let AwsElasticBeanstalkEnvironmentOptional =
  { cname_prefix : Optional Text
  , description : Optional Text
  , platform_arn : Optional Text
  , poll_interval : Optional Text
  , solution_stack_name : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , template_name : Optional Text
  , tier : Optional Text
  , version_label : Optional Text
  , wait_for_ready_timeout : Optional Text
  , all_settings : Optional (List AllSettings)
  , setting : Optional (List Setting)
  }

let AwsElasticBeanstalkEnvironmentRequired =
  { application : Text
  , name : Text
  }
let AwsElasticBeanstalkEnvironment = AwsElasticBeanstalkEnvironmentOptional //\\ AwsElasticBeanstalkEnvironmentRequired

in
{ AwsElasticBeanstalkEnvironmentOptional = AwsElasticBeanstalkEnvironmentOptional
, AwsElasticBeanstalkEnvironmentRequired = AwsElasticBeanstalkEnvironmentRequired
, AwsElasticBeanstalkEnvironment = AwsElasticBeanstalkEnvironment
, SettingOptional = SettingOptional
, SettingRequired = SettingRequired
, Setting = Setting
, AllSettingsOptional = AllSettingsOptional
, AllSettingsRequired = AllSettingsRequired
, AllSettings = AllSettings
}
