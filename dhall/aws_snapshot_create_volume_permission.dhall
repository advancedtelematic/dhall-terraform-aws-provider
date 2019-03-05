
let AwsSnapshotCreateVolumePermissionOptional = {}

let AwsSnapshotCreateVolumePermissionRequired =
  { account_id: Text
  , snapshot_id: Text
  }
let AwsSnapshotCreateVolumePermission = AwsSnapshotCreateVolumePermissionOptional //\\ AwsSnapshotCreateVolumePermissionRequired

in
{ AwsSnapshotCreateVolumePermission = AwsSnapshotCreateVolumePermission
}
