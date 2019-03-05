
let AwsAcmCertificateValidationOptional =
  { validation_record_fqdns: Optional (List Text) }

let AwsAcmCertificateValidationRequired =
  { certificate_arn: Text }
let AwsAcmCertificateValidation = AwsAcmCertificateValidationOptional //\\ AwsAcmCertificateValidationRequired

in
{ AwsAcmCertificateValidationOptional = AwsAcmCertificateValidationOptional
, AwsAcmCertificateValidationRequired = AwsAcmCertificateValidationRequired
, AwsAcmCertificateValidation = AwsAcmCertificateValidation
}
