
let connectSettings = {}

let vpcSettings = {}

let awsDirectoryServiceDirectory =
  { alias = None Text
  , description = None Text
  , edition = None Text
  , enable_sso = None Bool
  , short_name = None Text
  , size = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , type = None Text
  , connect_settings = None (../dhall/aws_directory_service_directory.dhall).ConnectSettings
  , vpc_settings = None (../dhall/aws_directory_service_directory.dhall).VpcSettings
  }

in
{ awsDirectoryServiceDirectory = awsDirectoryServiceDirectory
}
