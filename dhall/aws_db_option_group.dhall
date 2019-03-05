
let OptionSettingsOptional = {}

let OptionSettingsRequired =
  { name: Text
  , value: Text
  }
let OptionSettings = OptionSettingsOptional //\\ OptionSettingsRequired

let OptionOptional =
  { db_security_group_memberships: Optional (List Text)
  , port: Optional Natural
  , version: Optional Text
  , vpc_security_group_memberships: Optional (List Text)
  , option_settings: Optional (List OptionSettings)
  }

let OptionRequired =
  { option_name: Text }
let Option = OptionOptional //\\ OptionRequired

let AwsDbOptionGroupOptional =
  { arn: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , option_group_description: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , option: Optional (List Option)
  }

let AwsDbOptionGroupRequired =
  { engine_name: Text
  , major_engine_version: Text
  }
let AwsDbOptionGroup = AwsDbOptionGroupOptional //\\ AwsDbOptionGroupRequired

in
{ AwsDbOptionGroupOptional = AwsDbOptionGroupOptional
, AwsDbOptionGroupRequired = AwsDbOptionGroupRequired
, AwsDbOptionGroup = AwsDbOptionGroup
, OptionOptional = OptionOptional
, OptionRequired = OptionRequired
, Option = Option
, OptionSettings = OptionSettings
}
