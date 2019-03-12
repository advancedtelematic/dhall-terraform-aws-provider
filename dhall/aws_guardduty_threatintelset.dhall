
let AwsGuarddutyThreatintelsetOptional = {}

let AwsGuarddutyThreatintelsetRequired =
  { activate : Bool
  , detector_id : Text
  , format : Text
  , location : Text
  , name : Text
  }
let AwsGuarddutyThreatintelset = AwsGuarddutyThreatintelsetOptional //\\ AwsGuarddutyThreatintelsetRequired

in
{ AwsGuarddutyThreatintelset = AwsGuarddutyThreatintelset
}
