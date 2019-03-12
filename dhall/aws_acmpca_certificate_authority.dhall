
let SubjectOptional =
  { common_name : Optional Text
  , country : Optional Text
  , distinguished_name_qualifier : Optional Text
  , generation_qualifier : Optional Text
  , given_name : Optional Text
  , initials : Optional Text
  , locality : Optional Text
  , organization : Optional Text
  , organizational_unit : Optional Text
  , pseudonym : Optional Text
  , state : Optional Text
  , surname : Optional Text
  , title : Optional Text
  }

let SubjectRequired = {}
let Subject = SubjectOptional //\\ SubjectRequired

let CertificateAuthorityConfigurationOptional = {}

let CertificateAuthorityConfigurationRequired =
  { key_algorithm : Text
  , signing_algorithm : Text
  , subject : Subject
  }
let CertificateAuthorityConfiguration = CertificateAuthorityConfigurationOptional //\\ CertificateAuthorityConfigurationRequired

let CrlConfigurationOptional =
  { custom_cname : Optional Text
  , enabled : Optional Bool
  , s3_bucket_name : Optional Text
  }

let CrlConfigurationRequired =
  { expiration_in_days : Natural }
let CrlConfiguration = CrlConfigurationOptional //\\ CrlConfigurationRequired

let RevocationConfigurationOptional =
  { crl_configuration : Optional CrlConfiguration }

let RevocationConfigurationRequired = {}
let RevocationConfiguration = RevocationConfigurationOptional //\\ RevocationConfigurationRequired

let AwsAcmpcaCertificateAuthorityOptional =
  { enabled : Optional Bool
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , type : Optional Text
  , revocation_configuration : Optional RevocationConfiguration
  }

let AwsAcmpcaCertificateAuthorityRequired =
  { certificate_authority_configuration : CertificateAuthorityConfiguration }
let AwsAcmpcaCertificateAuthority = AwsAcmpcaCertificateAuthorityOptional //\\ AwsAcmpcaCertificateAuthorityRequired

in
{ AwsAcmpcaCertificateAuthorityOptional = AwsAcmpcaCertificateAuthorityOptional
, AwsAcmpcaCertificateAuthorityRequired = AwsAcmpcaCertificateAuthorityRequired
, AwsAcmpcaCertificateAuthority = AwsAcmpcaCertificateAuthority
, RevocationConfigurationOptional = RevocationConfigurationOptional
, RevocationConfigurationRequired = RevocationConfigurationRequired
, RevocationConfiguration = RevocationConfiguration
, CrlConfigurationOptional = CrlConfigurationOptional
, CrlConfigurationRequired = CrlConfigurationRequired
, CrlConfiguration = CrlConfiguration
, CertificateAuthorityConfiguration = CertificateAuthorityConfiguration
, SubjectOptional = SubjectOptional
, SubjectRequired = SubjectRequired
, Subject = Subject
}
