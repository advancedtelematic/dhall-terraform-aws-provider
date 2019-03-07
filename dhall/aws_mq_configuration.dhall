
let AwsMqConfigurationOptional =
  { description: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsMqConfigurationRequired =
  { data: Text
  , engine_type: Text
  , engine_version: Text
  , name: Text
  }
let AwsMqConfiguration = AwsMqConfigurationOptional //\\ AwsMqConfigurationRequired

in
{ AwsMqConfigurationOptional = AwsMqConfigurationOptional
, AwsMqConfigurationRequired = AwsMqConfigurationRequired
, AwsMqConfiguration = AwsMqConfiguration
}
