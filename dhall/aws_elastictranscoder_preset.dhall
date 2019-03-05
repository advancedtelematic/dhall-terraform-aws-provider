
let AudioOptional =
  { audio_packing_mode: Optional Text
  , bit_rate: Optional Text
  , channels: Optional Text
  , codec: Optional Text
  , sample_rate: Optional Text
  }

let AudioRequired = {}
let Audio = AudioOptional //\\ AudioRequired

let AudioCodecOptionsOptional =
  { bit_depth: Optional Text
  , bit_order: Optional Text
  , profile: Optional Text
  , signed: Optional Text
  }

let AudioCodecOptionsRequired = {}
let AudioCodecOptions = AudioCodecOptionsOptional //\\ AudioCodecOptionsRequired

let ThumbnailsOptional =
  { aspect_ratio: Optional Text
  , format: Optional Text
  , interval: Optional Text
  , max_height: Optional Text
  , max_width: Optional Text
  , padding_policy: Optional Text
  , resolution: Optional Text
  , sizing_policy: Optional Text
  }

let ThumbnailsRequired = {}
let Thumbnails = ThumbnailsOptional //\\ ThumbnailsRequired

let VideoOptional =
  { aspect_ratio: Optional Text
  , bit_rate: Optional Text
  , codec: Optional Text
  , display_aspect_ratio: Optional Text
  , fixed_gop: Optional Text
  , frame_rate: Optional Text
  , keyframes_max_dist: Optional Text
  , max_frame_rate: Optional Text
  , max_height: Optional Text
  , max_width: Optional Text
  , padding_policy: Optional Text
  , resolution: Optional Text
  , sizing_policy: Optional Text
  }

let VideoRequired = {}
let Video = VideoOptional //\\ VideoRequired

let VideoWatermarksOptional =
  { horizontal_align: Optional Text
  , horizontal_offset: Optional Text
  , id: Optional Text
  , max_height: Optional Text
  , max_width: Optional Text
  , opacity: Optional Text
  , sizing_policy: Optional Text
  , target: Optional Text
  , vertical_align: Optional Text
  , vertical_offset: Optional Text
  }

let VideoWatermarksRequired = {}
let VideoWatermarks = VideoWatermarksOptional //\\ VideoWatermarksRequired

let AwsElastictranscoderPresetOptional =
  { arn: Optional Text
  , description: Optional Text
  , name: Optional Text
  , type: Optional Text
  , video_codec_options: Optional (List { mapKey : Text, mapValue : Text })
  , audio: Optional Audio
  , audio_codec_options: Optional AudioCodecOptions
  , thumbnails: Optional Thumbnails
  , video: Optional Video
  , video_watermarks: Optional (List VideoWatermarks)
  }

let AwsElastictranscoderPresetRequired =
  { container: Text }
let AwsElastictranscoderPreset = AwsElastictranscoderPresetOptional //\\ AwsElastictranscoderPresetRequired

in
{ AwsElastictranscoderPresetOptional = AwsElastictranscoderPresetOptional
, AwsElastictranscoderPresetRequired = AwsElastictranscoderPresetRequired
, AwsElastictranscoderPreset = AwsElastictranscoderPreset
, VideoWatermarksOptional = VideoWatermarksOptional
, VideoWatermarksRequired = VideoWatermarksRequired
, VideoWatermarks = VideoWatermarks
, VideoOptional = VideoOptional
, VideoRequired = VideoRequired
, Video = Video
, ThumbnailsOptional = ThumbnailsOptional
, ThumbnailsRequired = ThumbnailsRequired
, Thumbnails = Thumbnails
, AudioCodecOptionsOptional = AudioCodecOptionsOptional
, AudioCodecOptionsRequired = AudioCodecOptionsRequired
, AudioCodecOptions = AudioCodecOptions
, AudioOptional = AudioOptional
, AudioRequired = AudioRequired
, Audio = Audio
}
