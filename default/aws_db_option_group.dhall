
let optionSettings = {}

let option =
  { db_security_group_memberships = None (List Text)
  , port = None Natural
  , version = None Text
  , vpc_security_group_memberships = None (List Text)
  , option_settings = None (List (../dhall/aws_db_option_group.dhall).OptionSettings)
  }

let awsDbOptionGroup =
  { name = None Text
  , name_prefix = None Text
  , option_group_description = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , option = None (List (../dhall/aws_db_option_group.dhall).Option)
  }

in
{ awsDbOptionGroup = awsDbOptionGroup
, option = option
}
