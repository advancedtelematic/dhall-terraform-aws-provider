
let subject =
  { common_name = None Text
  , country = None Text
  , distinguished_name_qualifier = None Text
  , generation_qualifier = None Text
  , given_name = None Text
  , initials = None Text
  , locality = None Text
  , organization = None Text
  , organizational_unit = None Text
  , pseudonym = None Text
  , state = None Text
  , surname = None Text
  , title = None Text
  }

let certificateAuthorityConfiguration = {}

let crlConfiguration =
  { custom_cname = None Text
  , enabled = None Bool
  , s3_bucket_name = None Text
  }

let revocationConfiguration =
  { crl_configuration = None (../dhall/aws_acmpca_certificate_authority.dhall).CrlConfiguration }

let awsAcmpcaCertificateAuthority =
  { enabled = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , type = None Text
  , revocation_configuration = None (../dhall/aws_acmpca_certificate_authority.dhall).RevocationConfiguration
  }

in
{ awsAcmpcaCertificateAuthority = awsAcmpcaCertificateAuthority
, revocationConfiguration = revocationConfiguration
, crlConfiguration = crlConfiguration
, subject = subject
}
