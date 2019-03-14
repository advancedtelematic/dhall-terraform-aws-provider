
let certificateAuthority = {}

let vpcConfig =
  { security_group_ids = None (List Text) }

let awsEksCluster =
  { version = None Text
  , certificate_authority = None (../dhall/aws_eks_cluster.dhall).CertificateAuthority
  }

in
{ awsEksCluster = awsEksCluster
, vpcConfig = vpcConfig
}
