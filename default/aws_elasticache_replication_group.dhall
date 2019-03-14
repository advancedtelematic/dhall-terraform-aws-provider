
let clusterMode = {}

let awsElasticacheReplicationGroup =
  { apply_immediately = None Bool
  , at_rest_encryption_enabled = None Bool
  , auth_token = None Text
  , auto_minor_version_upgrade = None Bool
  , automatic_failover_enabled = None Bool
  , availability_zones = None (List Text)
  , engine = None Text
  , engine_version = None Text
  , maintenance_window = None Text
  , node_type = None Text
  , notification_topic_arn = None Text
  , number_cache_clusters = None Natural
  , parameter_group_name = None Text
  , port = None Natural
  , security_group_ids = None (List Text)
  , security_group_names = None (List Text)
  , snapshot_arns = None (List Text)
  , snapshot_name = None Text
  , snapshot_retention_limit = None Natural
  , snapshot_window = None Text
  , subnet_group_name = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , transit_encryption_enabled = None Bool
  , cluster_mode = None (../dhall/aws_elasticache_replication_group.dhall).ClusterMode
  }

in
{ awsElasticacheReplicationGroup = awsElasticacheReplicationGroup
}
