
let domainValidationOptions = {}

let awsAcmCertificate =
  { certificate_body = None Text
  , certificate_chain = None Text
  , domain_name = None Text
  , private_key = None Text
  , subject_alternative_names = None (List Text)
  , tags = None (List { mapKey : Text, mapValue : Text })
  , validation_method = None Text
  , domain_validation_options = None (List (../dhall/aws_acm_certificate.dhall).DomainValidationOptions)
  }

in
{ awsAcmCertificate = awsAcmCertificate
}
