
let AwsLicensemanagerLicenseConfigurationOptional =
  { description : Optional Text
  , license_count : Optional Natural
  , license_count_hard_limit : Optional Bool
  , license_rules : Optional (List Text)
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsLicensemanagerLicenseConfigurationRequired =
  { license_counting_type : Text
  , name : Text
  }
let AwsLicensemanagerLicenseConfiguration = AwsLicensemanagerLicenseConfigurationOptional //\\ AwsLicensemanagerLicenseConfigurationRequired

in
{ AwsLicensemanagerLicenseConfigurationOptional = AwsLicensemanagerLicenseConfigurationOptional
, AwsLicensemanagerLicenseConfigurationRequired = AwsLicensemanagerLicenseConfigurationRequired
, AwsLicensemanagerLicenseConfiguration = AwsLicensemanagerLicenseConfiguration
}
