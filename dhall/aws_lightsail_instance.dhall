
let AwsLightsailInstanceOptional =
  { key_pair_name: Optional Text
  , user_data: Optional Text
  }

let AwsLightsailInstanceRequired =
  { availability_zone: Text
  , blueprint_id: Text
  , bundle_id: Text
  , name: Text
  }
let AwsLightsailInstance = AwsLightsailInstanceOptional //\\ AwsLightsailInstanceRequired

in
{ AwsLightsailInstanceOptional = AwsLightsailInstanceOptional
, AwsLightsailInstanceRequired = AwsLightsailInstanceRequired
, AwsLightsailInstance = AwsLightsailInstance
}
