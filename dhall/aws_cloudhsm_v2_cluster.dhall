
let ClusterCertificatesOptional =
  { aws_hardware_certificate: Optional Text
  , cluster_certificate: Optional Text
  , cluster_csr: Optional Text
  , hsm_certificate: Optional Text
  , manufacturer_hardware_certificate: Optional Text
  }

let ClusterCertificatesRequired = {}
let ClusterCertificates = ClusterCertificatesOptional //\\ ClusterCertificatesRequired

let AwsCloudhsmV2ClusterOptional =
  { cluster_id: Optional Text
  , cluster_state: Optional Text
  , security_group_id: Optional Text
  , source_backup_identifier: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , vpc_id: Optional Text
  , cluster_certificates: Optional ClusterCertificates
  }

let AwsCloudhsmV2ClusterRequired =
  { hsm_type: Text
  , subnet_ids: (List Text)
  }
let AwsCloudhsmV2Cluster = AwsCloudhsmV2ClusterOptional //\\ AwsCloudhsmV2ClusterRequired

in
{ AwsCloudhsmV2ClusterOptional = AwsCloudhsmV2ClusterOptional
, AwsCloudhsmV2ClusterRequired = AwsCloudhsmV2ClusterRequired
, AwsCloudhsmV2Cluster = AwsCloudhsmV2Cluster
, ClusterCertificatesOptional = ClusterCertificatesOptional
, ClusterCertificatesRequired = ClusterCertificatesRequired
, ClusterCertificates = ClusterCertificates
}
