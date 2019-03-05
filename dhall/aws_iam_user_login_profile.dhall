
let AwsIamUserLoginProfileOptional =
  { encrypted_password: Optional Text
  , key_fingerprint: Optional Text
  , password_length: Optional Natural
  , password_reset_required: Optional Bool
  }

let AwsIamUserLoginProfileRequired =
  { pgp_key: Text
  , user: Text
  }
let AwsIamUserLoginProfile = AwsIamUserLoginProfileOptional //\\ AwsIamUserLoginProfileRequired

in
{ AwsIamUserLoginProfileOptional = AwsIamUserLoginProfileOptional
, AwsIamUserLoginProfileRequired = AwsIamUserLoginProfileRequired
, AwsIamUserLoginProfile = AwsIamUserLoginProfile
}
