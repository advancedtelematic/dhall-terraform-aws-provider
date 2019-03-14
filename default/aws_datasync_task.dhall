
let options =
  { atime = None Text
  , bytes_per_second = None Natural
  , gid = None Text
  , mtime = None Text
  , posix_permissions = None Text
  , preserve_deleted_files = None Text
  , preserve_devices = None Text
  , uid = None Text
  , verify_mode = None Text
  }

let awsDatasyncTask =
  { cloudwatch_log_group_arn = None Text
  , name = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , options = None (../dhall/aws_datasync_task.dhall).Options
  }

in
{ awsDatasyncTask = awsDatasyncTask
, options = options
}
