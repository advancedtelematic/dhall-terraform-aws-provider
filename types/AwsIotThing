
let AwsIotThingOptional =
  { attributes : Optional (List { mapKey : Text, mapValue : Text })
  , thing_type_name : Optional Text
  }

let AwsIotThingRequired =
  { name : Text }
let AwsIotThing = AwsIotThingOptional //\\ AwsIotThingRequired

in
{ AwsIotThingOptional = AwsIotThingOptional
, AwsIotThingRequired = AwsIotThingRequired
, AwsIotThing = AwsIotThing
}
