
let AwsRdsGlobalClusterOptional =
  { database_name: Optional Text
  , deletion_protection: Optional Bool
  , engine: Optional Text
  , engine_version: Optional Text
  , storage_encrypted: Optional Bool
  }

let AwsRdsGlobalClusterRequired =
  { global_cluster_identifier: Text }
let AwsRdsGlobalCluster = AwsRdsGlobalClusterOptional //\\ AwsRdsGlobalClusterRequired

in
{ AwsRdsGlobalClusterOptional = AwsRdsGlobalClusterOptional
, AwsRdsGlobalClusterRequired = AwsRdsGlobalClusterRequired
, AwsRdsGlobalCluster = AwsRdsGlobalCluster
}
