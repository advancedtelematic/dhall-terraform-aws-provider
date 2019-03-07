
let DomainValidationOptionsOptional = {}

let DomainValidationOptionsRequired = {}
let DomainValidationOptions = DomainValidationOptionsOptional //\\ DomainValidationOptionsRequired

let AwsAcmCertificateOptional =
  { certificate_body: Optional Text
  , certificate_chain: Optional Text
  , domain_name: Optional Text
  , private_key: Optional Text
  , subject_alternative_names: Optional (List Text)
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , validation_method: Optional Text
  , domain_validation_options: Optional (List DomainValidationOptions)
  }

let AwsAcmCertificateRequired = {}
let AwsAcmCertificate = AwsAcmCertificateOptional //\\ AwsAcmCertificateRequired

in
{ AwsAcmCertificateOptional = AwsAcmCertificateOptional
, AwsAcmCertificateRequired = AwsAcmCertificateRequired
, AwsAcmCertificate = AwsAcmCertificate
, DomainValidationOptions = DomainValidationOptions
}
