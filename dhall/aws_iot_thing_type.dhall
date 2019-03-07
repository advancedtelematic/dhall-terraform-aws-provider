
let PropertiesOptional =
  { description: Optional Text
  , searchable_attributes: Optional (List Text)
  }

let PropertiesRequired = {}
let Properties = PropertiesOptional //\\ PropertiesRequired

let AwsIotThingTypeOptional =
  { deprecated: Optional Bool
  , properties: Optional Properties
  }

let AwsIotThingTypeRequired =
  { name: Text }
let AwsIotThingType = AwsIotThingTypeOptional //\\ AwsIotThingTypeRequired

in
{ AwsIotThingTypeOptional = AwsIotThingTypeOptional
, AwsIotThingTypeRequired = AwsIotThingTypeRequired
, AwsIotThingType = AwsIotThingType
, PropertiesOptional = PropertiesOptional
, PropertiesRequired = PropertiesRequired
, Properties = Properties
}
