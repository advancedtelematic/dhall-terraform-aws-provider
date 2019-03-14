
let physicalConnectionRequirements =
  { availability_zone = None Text
  , security_group_id_list = None (List Text)
  , subnet_id = None Text
  }

let awsGlueConnection =
  { catalog_id = None Text
  , connection_type = None Text
  , description = None Text
  , match_criteria = None (List Text)
  , physical_connection_requirements = None (../dhall/aws_glue_connection.dhall).PhysicalConnectionRequirements
  }

in
{ awsGlueConnection = awsGlueConnection
, physicalConnectionRequirements = physicalConnectionRequirements
}
