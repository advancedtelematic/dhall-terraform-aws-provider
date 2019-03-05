
let OptionsOptional =
  { atime: Optional Text
  , bytes_per_second: Optional Natural
  , gid: Optional Text
  , mtime: Optional Text
  , posix_permissions: Optional Text
  , preserve_deleted_files: Optional Text
  , preserve_devices: Optional Text
  , uid: Optional Text
  , verify_mode: Optional Text
  }

let OptionsRequired = {}
let Options = OptionsOptional //\\ OptionsRequired

let AwsDatasyncTaskOptional =
  { arn: Optional Text
  , cloudwatch_log_group_arn: Optional Text
  , name: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , options: Optional Options
  }

let AwsDatasyncTaskRequired =
  { destination_location_arn: Text
  , source_location_arn: Text
  }
let AwsDatasyncTask = AwsDatasyncTaskOptional //\\ AwsDatasyncTaskRequired

in
{ AwsDatasyncTaskOptional = AwsDatasyncTaskOptional
, AwsDatasyncTaskRequired = AwsDatasyncTaskRequired
, AwsDatasyncTask = AwsDatasyncTask
, OptionsOptional = OptionsOptional
, OptionsRequired = OptionsRequired
, Options = Options
}
