
let properties =
  { description = None Text
  , searchable_attributes = None (List Text)
  }

let awsIotThingType =
  { deprecated = None Bool
  , properties = None (../dhall/aws_iot_thing_type.dhall).Properties
  }

in
{ awsIotThingType = awsIotThingType
, properties = properties
}
