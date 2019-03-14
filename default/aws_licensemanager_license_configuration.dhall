
let awsLicensemanagerLicenseConfiguration =
  { description = None Text
  , license_count = None Natural
  , license_count_hard_limit = None Bool
  , license_rules = None (List Text)
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsLicensemanagerLicenseConfiguration = awsLicensemanagerLicenseConfiguration
}
