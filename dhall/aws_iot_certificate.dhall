
let AwsIotCertificateOptional =
  { arn: Optional Text }

let AwsIotCertificateRequired =
  { active: Bool
  , csr: Text
  }
let AwsIotCertificate = AwsIotCertificateOptional //\\ AwsIotCertificateRequired

in
{ AwsIotCertificateOptional = AwsIotCertificateOptional
, AwsIotCertificateRequired = AwsIotCertificateRequired
, AwsIotCertificate = AwsIotCertificate
}
