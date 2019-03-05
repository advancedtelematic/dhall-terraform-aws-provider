
let AwsGuarddutyIpsetOptional = {}

let AwsGuarddutyIpsetRequired =
  { activate: Bool
  , detector_id: Text
  , format: Text
  , location: Text
  , name: Text
  }
let AwsGuarddutyIpset = AwsGuarddutyIpsetOptional //\\ AwsGuarddutyIpsetRequired

in
{ AwsGuarddutyIpset = AwsGuarddutyIpset
}
