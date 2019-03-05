
let ContentConfigOptional =
  { bucket: Optional Text
  , storage_class: Optional Text
  }

let ContentConfigRequired = {}
let ContentConfig = ContentConfigOptional //\\ ContentConfigRequired

let ContentConfigPermissionsOptional =
  { access: Optional (List Text)
  , grantee: Optional Text
  , grantee_type: Optional Text
  }

let ContentConfigPermissionsRequired = {}
let ContentConfigPermissions = ContentConfigPermissionsOptional //\\ ContentConfigPermissionsRequired

let NotificationsOptional =
  { completed: Optional Text
  , error: Optional Text
  , progressing: Optional Text
  , warning: Optional Text
  }

let NotificationsRequired = {}
let Notifications = NotificationsOptional //\\ NotificationsRequired

let ThumbnailConfigOptional =
  { bucket: Optional Text
  , storage_class: Optional Text
  }

let ThumbnailConfigRequired = {}
let ThumbnailConfig = ThumbnailConfigOptional //\\ ThumbnailConfigRequired

let ThumbnailConfigPermissionsOptional =
  { access: Optional (List Text)
  , grantee: Optional Text
  , grantee_type: Optional Text
  }

let ThumbnailConfigPermissionsRequired = {}
let ThumbnailConfigPermissions = ThumbnailConfigPermissionsOptional //\\ ThumbnailConfigPermissionsRequired

let AwsElastictranscoderPipelineOptional =
  { arn: Optional Text
  , aws_kms_key_arn: Optional Text
  , name: Optional Text
  , output_bucket: Optional Text
  , content_config: Optional ContentConfig
  , content_config_permissions: Optional (List ContentConfigPermissions)
  , notifications: Optional Notifications
  , thumbnail_config: Optional ThumbnailConfig
  , thumbnail_config_permissions: Optional (List ThumbnailConfigPermissions)
  }

let AwsElastictranscoderPipelineRequired =
  { input_bucket: Text
  , role: Text
  }
let AwsElastictranscoderPipeline = AwsElastictranscoderPipelineOptional //\\ AwsElastictranscoderPipelineRequired

in
{ AwsElastictranscoderPipelineOptional = AwsElastictranscoderPipelineOptional
, AwsElastictranscoderPipelineRequired = AwsElastictranscoderPipelineRequired
, AwsElastictranscoderPipeline = AwsElastictranscoderPipeline
, ThumbnailConfigPermissionsOptional = ThumbnailConfigPermissionsOptional
, ThumbnailConfigPermissionsRequired = ThumbnailConfigPermissionsRequired
, ThumbnailConfigPermissions = ThumbnailConfigPermissions
, ThumbnailConfigOptional = ThumbnailConfigOptional
, ThumbnailConfigRequired = ThumbnailConfigRequired
, ThumbnailConfig = ThumbnailConfig
, NotificationsOptional = NotificationsOptional
, NotificationsRequired = NotificationsRequired
, Notifications = Notifications
, ContentConfigPermissionsOptional = ContentConfigPermissionsOptional
, ContentConfigPermissionsRequired = ContentConfigPermissionsRequired
, ContentConfigPermissions = ContentConfigPermissions
, ContentConfigOptional = ContentConfigOptional
, ContentConfigRequired = ContentConfigRequired
, ContentConfig = ContentConfig
}
