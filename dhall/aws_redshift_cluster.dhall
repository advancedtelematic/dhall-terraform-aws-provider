
let LoggingOptional =
  { bucket_name : Optional Text
  , s3_key_prefix : Optional Text
  }

let LoggingRequired =
  { enable : Bool }
let Logging = LoggingOptional //\\ LoggingRequired

let SnapshotCopyOptional =
  { grant_name : Optional Text
  , retention_period : Optional Natural
  }

let SnapshotCopyRequired =
  { destination_region : Text }
let SnapshotCopy = SnapshotCopyOptional //\\ SnapshotCopyRequired

let AwsRedshiftClusterOptional =
  { allow_version_upgrade : Optional Bool
  , automated_snapshot_retention_period : Optional Natural
  , availability_zone : Optional Text
  , bucket_name : Optional Text
  , cluster_parameter_group_name : Optional Text
  , cluster_public_key : Optional Text
  , cluster_revision_number : Optional Text
  , cluster_security_groups : Optional (List Text)
  , cluster_subnet_group_name : Optional Text
  , cluster_type : Optional Text
  , cluster_version : Optional Text
  , database_name : Optional Text
  , elastic_ip : Optional Text
  , enable_logging : Optional Bool
  , encrypted : Optional Bool
  , endpoint : Optional Text
  , enhanced_vpc_routing : Optional Bool
  , final_snapshot_identifier : Optional Text
  , iam_roles : Optional (List Text)
  , kms_key_id : Optional Text
  , master_password : Optional Text
  , master_username : Optional Text
  , number_of_nodes : Optional Natural
  , owner_account : Optional Text
  , port : Optional Natural
  , preferred_maintenance_window : Optional Text
  , publicly_accessible : Optional Bool
  , s3_key_prefix : Optional Text
  , skip_final_snapshot : Optional Bool
  , snapshot_cluster_identifier : Optional Text
  , snapshot_identifier : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , vpc_security_group_ids : Optional (List Text)
  , logging : Optional Logging
  , snapshot_copy : Optional SnapshotCopy
  }

let AwsRedshiftClusterRequired =
  { cluster_identifier : Text
  , node_type : Text
  }
let AwsRedshiftCluster = AwsRedshiftClusterOptional //\\ AwsRedshiftClusterRequired

in
{ AwsRedshiftClusterOptional = AwsRedshiftClusterOptional
, AwsRedshiftClusterRequired = AwsRedshiftClusterRequired
, AwsRedshiftCluster = AwsRedshiftCluster
, SnapshotCopyOptional = SnapshotCopyOptional
, SnapshotCopyRequired = SnapshotCopyRequired
, SnapshotCopy = SnapshotCopy
, LoggingOptional = LoggingOptional
, LoggingRequired = LoggingRequired
, Logging = Logging
}
