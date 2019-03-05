
let AwsIamUserSshKeyOptional =
  { fingerprint: Optional Text
  , ssh_public_key_id: Optional Text
  , status: Optional Text
  }

let AwsIamUserSshKeyRequired =
  { encoding: Text
  , public_key: Text
  , username: Text
  }
let AwsIamUserSshKey = AwsIamUserSshKeyOptional //\\ AwsIamUserSshKeyRequired

in
{ AwsIamUserSshKeyOptional = AwsIamUserSshKeyOptional
, AwsIamUserSshKeyRequired = AwsIamUserSshKeyRequired
, AwsIamUserSshKey = AwsIamUserSshKey
}
