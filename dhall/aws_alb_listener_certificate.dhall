
let AwsAlbListenerCertificateOptional = {}

let AwsAlbListenerCertificateRequired =
  { certificate_arn: Text
  , listener_arn: Text
  }
let AwsAlbListenerCertificate = AwsAlbListenerCertificateOptional //\\ AwsAlbListenerCertificateRequired

in
{ AwsAlbListenerCertificate = AwsAlbListenerCertificate
}
