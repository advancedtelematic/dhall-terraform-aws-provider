
let clusterCertificates = {}

let awsCloudhsmV2Cluster =
  { source_backup_identifier = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , cluster_certificates = None (../dhall/aws_cloudhsm_v2_cluster.dhall).ClusterCertificates
  }

in
{ awsCloudhsmV2Cluster = awsCloudhsmV2Cluster
}
