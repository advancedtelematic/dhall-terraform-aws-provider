
let AwsNeptuneClusterSnapshotOptional = {}

let AwsNeptuneClusterSnapshotRequired =
  { db_cluster_identifier: Text
  , db_cluster_snapshot_identifier: Text
  }
let AwsNeptuneClusterSnapshot = AwsNeptuneClusterSnapshotOptional //\\ AwsNeptuneClusterSnapshotRequired

in
{ AwsNeptuneClusterSnapshot = AwsNeptuneClusterSnapshot
}
