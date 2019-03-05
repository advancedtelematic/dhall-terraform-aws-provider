
let CertificateAuthorityOptional =
  { data: Optional Text }

let CertificateAuthorityRequired = {}
let CertificateAuthority = CertificateAuthorityOptional //\\ CertificateAuthorityRequired

let VpcConfigOptional =
  { security_group_ids: Optional (List Text)
  , vpc_id: Optional Text
  }

let VpcConfigRequired =
  { subnet_ids: (List Text) }
let VpcConfig = VpcConfigOptional //\\ VpcConfigRequired

let AwsEksClusterOptional =
  { arn: Optional Text
  , created_at: Optional Text
  , endpoint: Optional Text
  , platform_version: Optional Text
  , version: Optional Text
  , certificate_authority: Optional CertificateAuthority
  }

let AwsEksClusterRequired =
  { name: Text
  , role_arn: Text
  , vpc_config: VpcConfig
  }
let AwsEksCluster = AwsEksClusterOptional //\\ AwsEksClusterRequired

in
{ AwsEksClusterOptional = AwsEksClusterOptional
, AwsEksClusterRequired = AwsEksClusterRequired
, AwsEksCluster = AwsEksCluster
, VpcConfigOptional = VpcConfigOptional
, VpcConfigRequired = VpcConfigRequired
, VpcConfig = VpcConfig
, CertificateAuthorityOptional = CertificateAuthorityOptional
, CertificateAuthorityRequired = CertificateAuthorityRequired
, CertificateAuthority = CertificateAuthority
}
