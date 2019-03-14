
let recordingGroup =
  { all_supported = None Bool
  , include_global_resource_types = None Bool
  , resource_types = None (List Text)
  }

let awsConfigConfigurationRecorder =
  { name = None Text
  , recording_group = None (../dhall/aws_config_configuration_recorder.dhall).RecordingGroup
  }

in
{ awsConfigConfigurationRecorder = awsConfigConfigurationRecorder
, recordingGroup = recordingGroup
}
