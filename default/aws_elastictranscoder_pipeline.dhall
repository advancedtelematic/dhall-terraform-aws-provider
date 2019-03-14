
let contentConfig =
  { bucket = None Text
  , storage_class = None Text
  }

let contentConfigPermissions =
  { access = None (List Text)
  , grantee = None Text
  , grantee_type = None Text
  }

let notifications =
  { completed = None Text
  , error = None Text
  , progressing = None Text
  , warning = None Text
  }

let thumbnailConfig =
  { bucket = None Text
  , storage_class = None Text
  }

let thumbnailConfigPermissions =
  { access = None (List Text)
  , grantee = None Text
  , grantee_type = None Text
  }

let awsElastictranscoderPipeline =
  { aws_kms_key_arn = None Text
  , name = None Text
  , output_bucket = None Text
  , content_config = None (../dhall/aws_elastictranscoder_pipeline.dhall).ContentConfig
  , content_config_permissions = None (List (../dhall/aws_elastictranscoder_pipeline.dhall).ContentConfigPermissions)
  , notifications = None (../dhall/aws_elastictranscoder_pipeline.dhall).Notifications
  , thumbnail_config = None (../dhall/aws_elastictranscoder_pipeline.dhall).ThumbnailConfig
  , thumbnail_config_permissions = None (List (../dhall/aws_elastictranscoder_pipeline.dhall).ThumbnailConfigPermissions)
  }

in
{ awsElastictranscoderPipeline = awsElastictranscoderPipeline
, thumbnailConfigPermissions = thumbnailConfigPermissions
, thumbnailConfig = thumbnailConfig
, notifications = notifications
, contentConfigPermissions = contentConfigPermissions
, contentConfig = contentConfig
}
