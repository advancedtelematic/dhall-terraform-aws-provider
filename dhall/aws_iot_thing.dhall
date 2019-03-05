
let AwsIotThingOptional =
  { arn: Optional Text
  , attributes: Optional (List { mapKey : Text, mapValue : Text })
  , default_client_id: Optional Text
  , thing_type_name: Optional Text
  , version: Optional Natural
  }

let AwsIotThingRequired =
  { name: Text }
let AwsIotThing = AwsIotThingOptional //\\ AwsIotThingRequired

in
{ AwsIotThingOptional = AwsIotThingOptional
, AwsIotThingRequired = AwsIotThingRequired
, AwsIotThing = AwsIotThing
}
