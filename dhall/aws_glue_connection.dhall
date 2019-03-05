
let PhysicalConnectionRequirementsOptional =
  { availability_zone: Optional Text
  , security_group_id_list: Optional (List Text)
  , subnet_id: Optional Text
  }

let PhysicalConnectionRequirementsRequired = {}
let PhysicalConnectionRequirements = PhysicalConnectionRequirementsOptional //\\ PhysicalConnectionRequirementsRequired

let AwsGlueConnectionOptional =
  { catalog_id: Optional Text
  , connection_type: Optional Text
  , description: Optional Text
  , match_criteria: Optional (List Text)
  , physical_connection_requirements: Optional PhysicalConnectionRequirements
  }

let AwsGlueConnectionRequired =
  { connection_properties: (List { mapKey : Text, mapValue : Text })
  , name: Text
  }
let AwsGlueConnection = AwsGlueConnectionOptional //\\ AwsGlueConnectionRequired

in
{ AwsGlueConnectionOptional = AwsGlueConnectionOptional
, AwsGlueConnectionRequired = AwsGlueConnectionRequired
, AwsGlueConnection = AwsGlueConnection
, PhysicalConnectionRequirementsOptional = PhysicalConnectionRequirementsOptional
, PhysicalConnectionRequirementsRequired = PhysicalConnectionRequirementsRequired
, PhysicalConnectionRequirements = PhysicalConnectionRequirements
}
