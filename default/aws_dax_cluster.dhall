
let nodes = {}

let serverSideEncryption =
  { enabled = None Bool }

let awsDaxCluster =
  { availability_zones = None (List Text)
  , description = None Text
  , maintenance_window = None Text
  , notification_topic_arn = None Text
  , parameter_group_name = None Text
  , security_group_ids = None (List Text)
  , subnet_group_name = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , nodes = None (List (../dhall/aws_dax_cluster.dhall).Nodes)
  , server_side_encryption = None (../dhall/aws_dax_cluster.dhall).ServerSideEncryption
  }

in
{ awsDaxCluster = awsDaxCluster
, serverSideEncryption = serverSideEncryption
}
