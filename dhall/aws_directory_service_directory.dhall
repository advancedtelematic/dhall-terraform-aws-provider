
let ConnectSettingsOptional = {}

let ConnectSettingsRequired =
  { customer_dns_ips : (List Text)
  , customer_username : Text
  , subnet_ids : (List Text)
  , vpc_id : Text
  }
let ConnectSettings = ConnectSettingsOptional //\\ ConnectSettingsRequired

let VpcSettingsOptional = {}

let VpcSettingsRequired =
  { subnet_ids : (List Text)
  , vpc_id : Text
  }
let VpcSettings = VpcSettingsOptional //\\ VpcSettingsRequired

let AwsDirectoryServiceDirectoryOptional =
  { alias : Optional Text
  , description : Optional Text
  , edition : Optional Text
  , enable_sso : Optional Bool
  , short_name : Optional Text
  , size : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , type : Optional Text
  , connect_settings : Optional ConnectSettings
  , vpc_settings : Optional VpcSettings
  }

let AwsDirectoryServiceDirectoryRequired =
  { name : Text
  , password : Text
  }
let AwsDirectoryServiceDirectory = AwsDirectoryServiceDirectoryOptional //\\ AwsDirectoryServiceDirectoryRequired

in
{ AwsDirectoryServiceDirectoryOptional = AwsDirectoryServiceDirectoryOptional
, AwsDirectoryServiceDirectoryRequired = AwsDirectoryServiceDirectoryRequired
, AwsDirectoryServiceDirectory = AwsDirectoryServiceDirectory
, VpcSettings = VpcSettings
, ConnectSettings = ConnectSettings
}
