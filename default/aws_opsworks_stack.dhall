
let customCookbooksSource =
  { password = None Text
  , revision = None Text
  , ssh_key = None Text
  , username = None Text
  }

let awsOpsworksStack =
  { agent_version = None Text
  , berkshelf_version = None Text
  , color = None Text
  , configuration_manager_name = None Text
  , configuration_manager_version = None Text
  , custom_json = None Text
  , default_availability_zone = None Text
  , default_os = None Text
  , default_root_device_type = None Text
  , default_ssh_key_name = None Text
  , default_subnet_id = None Text
  , hostname_theme = None Text
  , manage_berkshelf = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , use_custom_cookbooks = None Bool
  , use_opsworks_security_groups = None Bool
  , vpc_id = None Text
  , custom_cookbooks_source = None (List (../dhall/aws_opsworks_stack.dhall).CustomCookbooksSource)
  }

in
{ awsOpsworksStack = awsOpsworksStack
, customCookbooksSource = customCookbooksSource
}
