
let RecordingGroupOptional =
  { all_supported : Optional Bool
  , include_global_resource_types : Optional Bool
  , resource_types : Optional (List Text)
  }

let RecordingGroupRequired = {}
let RecordingGroup = RecordingGroupOptional //\\ RecordingGroupRequired

let AwsConfigConfigurationRecorderOptional =
  { name : Optional Text
  , recording_group : Optional RecordingGroup
  }

let AwsConfigConfigurationRecorderRequired =
  { role_arn : Text }
let AwsConfigConfigurationRecorder = AwsConfigConfigurationRecorderOptional //\\ AwsConfigConfigurationRecorderRequired

in
{ AwsConfigConfigurationRecorderOptional = AwsConfigConfigurationRecorderOptional
, AwsConfigConfigurationRecorderRequired = AwsConfigConfigurationRecorderRequired
, AwsConfigConfigurationRecorder = AwsConfigConfigurationRecorder
, RecordingGroupOptional = RecordingGroupOptional
, RecordingGroupRequired = RecordingGroupRequired
, RecordingGroup = RecordingGroup
}
