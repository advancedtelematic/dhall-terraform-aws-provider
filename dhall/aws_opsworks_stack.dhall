
let CustomCookbooksSourceOptional =
  { password: Optional Text
  , revision: Optional Text
  , ssh_key: Optional Text
  , username: Optional Text
  }

let CustomCookbooksSourceRequired =
  { type: Text
  , url: Text
  }
let CustomCookbooksSource = CustomCookbooksSourceOptional //\\ CustomCookbooksSourceRequired

let AwsOpsworksStackOptional =
  { agent_version: Optional Text
  , berkshelf_version: Optional Text
  , color: Optional Text
  , configuration_manager_name: Optional Text
  , configuration_manager_version: Optional Text
  , custom_json: Optional Text
  , default_availability_zone: Optional Text
  , default_os: Optional Text
  , default_root_device_type: Optional Text
  , default_ssh_key_name: Optional Text
  , default_subnet_id: Optional Text
  , hostname_theme: Optional Text
  , manage_berkshelf: Optional Bool
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , use_custom_cookbooks: Optional Bool
  , use_opsworks_security_groups: Optional Bool
  , vpc_id: Optional Text
  , custom_cookbooks_source: Optional (List CustomCookbooksSource)
  }

let AwsOpsworksStackRequired =
  { default_instance_profile_arn: Text
  , name: Text
  , region: Text
  , service_role_arn: Text
  }
let AwsOpsworksStack = AwsOpsworksStackOptional //\\ AwsOpsworksStackRequired

in
{ AwsOpsworksStackOptional = AwsOpsworksStackOptional
, AwsOpsworksStackRequired = AwsOpsworksStackRequired
, AwsOpsworksStack = AwsOpsworksStack
, CustomCookbooksSourceOptional = CustomCookbooksSourceOptional
, CustomCookbooksSourceRequired = CustomCookbooksSourceRequired
, CustomCookbooksSource = CustomCookbooksSource
}
