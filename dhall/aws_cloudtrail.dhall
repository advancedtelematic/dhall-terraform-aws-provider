
let DataResourceOptional = {}

let DataResourceRequired =
  { type: Text
  , values: (List Text)
  }
let DataResource = DataResourceOptional //\\ DataResourceRequired

let EventSelectorOptional =
  { include_management_events: Optional Bool
  , read_write_type: Optional Text
  , data_resource: Optional (List DataResource)
  }

let EventSelectorRequired = {}
let EventSelector = EventSelectorOptional //\\ EventSelectorRequired

let AwsCloudtrailOptional =
  { arn: Optional Text
  , cloud_watch_logs_group_arn: Optional Text
  , cloud_watch_logs_role_arn: Optional Text
  , enable_log_file_validation: Optional Bool
  , enable_logging: Optional Bool
  , home_region: Optional Text
  , include_global_service_events: Optional Bool
  , is_multi_region_trail: Optional Bool
  , is_organization_trail: Optional Bool
  , kms_key_id: Optional Text
  , s3_key_prefix: Optional Text
  , sns_topic_name: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , event_selector: Optional (List EventSelector)
  }

let AwsCloudtrailRequired =
  { name: Text
  , s3_bucket_name: Text
  }
let AwsCloudtrail = AwsCloudtrailOptional //\\ AwsCloudtrailRequired

in
{ AwsCloudtrailOptional = AwsCloudtrailOptional
, AwsCloudtrailRequired = AwsCloudtrailRequired
, AwsCloudtrail = AwsCloudtrail
, EventSelectorOptional = EventSelectorOptional
, EventSelectorRequired = EventSelectorRequired
, EventSelector = EventSelector
, DataResource = DataResource
}
