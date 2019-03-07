
let AwsIotCertificateOptional = {}

let AwsIotCertificateRequired =
  { active: Bool
  , csr: Text
  }
let AwsIotCertificate = AwsIotCertificateOptional //\\ AwsIotCertificateRequired

in
{ AwsIotCertificate = AwsIotCertificate
}
