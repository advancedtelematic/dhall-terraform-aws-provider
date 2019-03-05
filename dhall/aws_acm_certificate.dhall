
let DomainValidationOptionsOptional =
  { domain_name: Optional Text
  , resource_record_name: Optional Text
  , resource_record_type: Optional Text
  , resource_record_value: Optional Text
  }

let DomainValidationOptionsRequired = {}
let DomainValidationOptions = DomainValidationOptionsOptional //\\ DomainValidationOptionsRequired

let AwsAcmCertificateOptional =
  { arn: Optional Text
  , certificate_body: Optional Text
  , certificate_chain: Optional Text
  , domain_name: Optional Text
  , private_key: Optional Text
  , subject_alternative_names: Optional (List Text)
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , validation_emails: Optional (List Text)
  , validation_method: Optional Text
  , domain_validation_options: Optional (List DomainValidationOptions)
  }

let AwsAcmCertificateRequired = {}
let AwsAcmCertificate = AwsAcmCertificateOptional //\\ AwsAcmCertificateRequired

in
{ AwsAcmCertificateOptional = AwsAcmCertificateOptional
, AwsAcmCertificateRequired = AwsAcmCertificateRequired
, AwsAcmCertificate = AwsAcmCertificate
, DomainValidationOptionsOptional = DomainValidationOptionsOptional
, DomainValidationOptionsRequired = DomainValidationOptionsRequired
, DomainValidationOptions = DomainValidationOptions
}
