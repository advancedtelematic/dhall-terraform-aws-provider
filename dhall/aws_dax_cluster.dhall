
let NodesOptional =
  { address: Optional Text
  , availability_zone: Optional Text
  , id: Optional Text
  , port: Optional Natural
  }

let NodesRequired = {}
let Nodes = NodesOptional //\\ NodesRequired

let ServerSideEncryptionOptional =
  { enabled: Optional Bool }

let ServerSideEncryptionRequired = {}
let ServerSideEncryption = ServerSideEncryptionOptional //\\ ServerSideEncryptionRequired

let AwsDaxClusterOptional =
  { arn: Optional Text
  , availability_zones: Optional (List Text)
  , cluster_address: Optional Text
  , configuration_endpoint: Optional Text
  , description: Optional Text
  , maintenance_window: Optional Text
  , notification_topic_arn: Optional Text
  , parameter_group_name: Optional Text
  , port: Optional Natural
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
, NodesOptional = NodesOptional
, NodesRequired = NodesRequired
, Nodes = Nodes
}
