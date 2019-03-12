
let AwsDbClusterSnapshotOptional = {}

let AwsDbClusterSnapshotRequired =
  { db_cluster_identifier : Text
  , db_cluster_snapshot_identifier : Text
  }
let AwsDbClusterSnapshot = AwsDbClusterSnapshotOptional //\\ AwsDbClusterSnapshotRequired

in
{ AwsDbClusterSnapshot = AwsDbClusterSnapshot
}
