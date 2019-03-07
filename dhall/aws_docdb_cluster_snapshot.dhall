
let AwsDocdbClusterSnapshotOptional = {}

let AwsDocdbClusterSnapshotRequired =
  { db_cluster_identifier: Text
  , db_cluster_snapshot_identifier: Text
  }
let AwsDocdbClusterSnapshot = AwsDocdbClusterSnapshotOptional //\\ AwsDocdbClusterSnapshotRequired

in
{ AwsDocdbClusterSnapshot = AwsDocdbClusterSnapshot
}
