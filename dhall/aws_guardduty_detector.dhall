
let AwsGuarddutyDetectorOptional =
  { enable : Optional Bool
  , finding_publishing_frequency : Optional Text
  }

let AwsGuarddutyDetectorRequired = {}
let AwsGuarddutyDetector = AwsGuarddutyDetectorOptional //\\ AwsGuarddutyDetectorRequired

in
{ AwsGuarddutyDetectorOptional = AwsGuarddutyDetectorOptional
, AwsGuarddutyDetectorRequired = AwsGuarddutyDetectorRequired
, AwsGuarddutyDetector = AwsGuarddutyDetector
}
