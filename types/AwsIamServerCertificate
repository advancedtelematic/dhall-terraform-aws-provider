
let AwsIamServerCertificateOptional =
  { arn : Optional Text
  , certificate_chain : Optional Text
  , name : Optional Text
  , name_prefix : Optional Text
  , path : Optional Text
  }

let AwsIamServerCertificateRequired =
  { certificate_body : Text
  , private_key : Text
  }
let AwsIamServerCertificate = AwsIamServerCertificateOptional //\\ AwsIamServerCertificateRequired

in
{ AwsIamServerCertificateOptional = AwsIamServerCertificateOptional
, AwsIamServerCertificateRequired = AwsIamServerCertificateRequired
, AwsIamServerCertificate = AwsIamServerCertificate
}
