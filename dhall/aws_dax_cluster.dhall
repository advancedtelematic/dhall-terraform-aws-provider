
let NodesOptional = {}

let NodesRequired = {}
let Nodes = NodesOptional //\\ NodesRequired

let ServerSideEncryptionOptional =
  { enabled: Optional Bool }

let ServerSideEncryptionRequired = {}
let ServerSideEncryption = ServerSideEncryptionOptional //\\ ServerSideEncryptionRequired

let AwsDaxClusterOptional =
  { availability_zones: Optional (List Text)
  , description: Optional Text
  , maintenance_window: Optional Text
  , notification_topic_arn: Optional Text
  , parameter_group_name: Optional Text
  , security_group_ids: Optional (List Text)
  , subnet_group_name: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , nodes: Optional (List Nodes)
  , server_side_encryption: Optional ServerSideEncryption
  }

let AwsDaxClusterRequired =
  { cluster_name: Text
  , iam_role_arn: Text
  , node_type: Text
  , replication_factor: Natural
  }
let AwsDaxCluster = AwsDaxClusterOptional //\\ AwsDaxClusterRequired

in
{ AwsDaxClusterOptional = AwsDaxClusterOptional
, AwsDaxClusterRequired = AwsDaxClusterRequired
, AwsDaxCluster = AwsDaxCluster
, ServerSideEncryptionOptional = ServerSideEncryptionOptional
, ServerSideEncryptionRequired = ServerSideEncryptionRequired
, ServerSideEncryption = ServerSideEncryption
, Nodes = Nodes
}
