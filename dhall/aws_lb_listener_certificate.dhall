
let AwsLbListenerCertificateOptional = {}

let AwsLbListenerCertificateRequired =
  { certificate_arn: Text
  , listener_arn: Text
  }
let AwsLbListenerCertificate = AwsLbListenerCertificateOptional //\\ AwsLbListenerCertificateRequired

in
{ AwsLbListenerCertificate = AwsLbListenerCertificate
}
