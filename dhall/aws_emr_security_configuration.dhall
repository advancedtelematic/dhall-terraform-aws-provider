
let AwsEmrSecurityConfigurationOptional =
  { creation_date: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  }

let AwsEmrSecurityConfigurationRequired =
  { configuration: Text }
let AwsEmrSecurityConfiguration = AwsEmrSecurityConfigurationOptional //\\ AwsEmrSecurityConfigurationRequired

in
{ AwsEmrSecurityConfigurationOptional = AwsEmrSecurityConfigurationOptional
, AwsEmrSecurityConfigurationRequired = AwsEmrSecurityConfigurationRequired
, AwsEmrSecurityConfiguration = AwsEmrSecurityConfiguration
}
