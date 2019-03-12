
let ClusterCertificatesOptional = {}

let ClusterCertificatesRequired = {}
let ClusterCertificates = ClusterCertificatesOptional //\\ ClusterCertificatesRequired

let AwsCloudhsmV2ClusterOptional =
  { source_backup_identifier : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , cluster_certificates : Optional ClusterCertificates
  }

let AwsCloudhsmV2ClusterRequired =
  { hsm_type : Text
  , subnet_ids : (List Text)
  }
let AwsCloudhsmV2Cluster = AwsCloudhsmV2ClusterOptional //\\ AwsCloudhsmV2ClusterRequired

in
{ AwsCloudhsmV2ClusterOptional = AwsCloudhsmV2ClusterOptional
, AwsCloudhsmV2ClusterRequired = AwsCloudhsmV2ClusterRequired
, AwsCloudhsmV2Cluster = AwsCloudhsmV2Cluster
, ClusterCertificates = ClusterCertificates
}
