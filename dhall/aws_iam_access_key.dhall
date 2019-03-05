
let AwsIamAccessKeyOptional =
  { encrypted_secret: Optional Text
  , key_fingerprint: Optional Text
  , pgp_key: Optional Text
  , secret: Optional Text
  , ses_smtp_password: Optional Text
  , status: Optional Text
  }

let AwsIamAccessKeyRequired =
  { user: Text }
let AwsIamAccessKey = AwsIamAccessKeyOptional //\\ AwsIamAccessKeyRequired

in
{ AwsIamAccessKeyOptional = AwsIamAccessKeyOptional
, AwsIamAccessKeyRequired = AwsIamAccessKeyRequired
, AwsIamAccessKey = AwsIamAccessKey
}
