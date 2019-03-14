
let audio =
  { audio_packing_mode = None Text
  , bit_rate = None Text
  , channels = None Text
  , codec = None Text
  , sample_rate = None Text
  }

let audioCodecOptions =
  { bit_depth = None Text
  , bit_order = None Text
  , profile = None Text
  , signed = None Text
  }

let thumbnails =
  { aspect_ratio = None Text
  , format = None Text
  , interval = None Text
  , max_height = None Text
  , max_width = None Text
  , padding_policy = None Text
  , resolution = None Text
  , sizing_policy = None Text
  }

let video =
  { aspect_ratio = None Text
  , bit_rate = None Text
  , codec = None Text
  , display_aspect_ratio = None Text
  , fixed_gop = None Text
  , frame_rate = None Text
  , keyframes_max_dist = None Text
  , max_frame_rate = None Text
  , max_height = None Text
  , max_width = None Text
  , padding_policy = None Text
  , resolution = None Text
  , sizing_policy = None Text
  }

let videoWatermarks =
  { horizontal_align = None Text
  , horizontal_offset = None Text
  , id = None Text
  , max_height = None Text
  , max_width = None Text
  , opacity = None Text
  , sizing_policy = None Text
  , target = None Text
  , vertical_align = None Text
  , vertical_offset = None Text
  }

let awsElastictranscoderPreset =
  { description = None Text
  , name = None Text
  , type = None Text
  , video_codec_options = None (List { mapKey : Text, mapValue : Text })
  , audio = None (../dhall/aws_elastictranscoder_preset.dhall).Audio
  , audio_codec_options = None (../dhall/aws_elastictranscoder_preset.dhall).AudioCodecOptions
  , thumbnails = None (../dhall/aws_elastictranscoder_preset.dhall).Thumbnails
  , video = None (../dhall/aws_elastictranscoder_preset.dhall).Video
  , video_watermarks = None (List (../dhall/aws_elastictranscoder_preset.dhall).VideoWatermarks)
  }

in
{ awsElastictranscoderPreset = awsElastictranscoderPreset
, videoWatermarks = videoWatermarks
, video = video
, thumbnails = thumbnails
, audioCodecOptions = audioCodecOptions
, audio = audio
}
