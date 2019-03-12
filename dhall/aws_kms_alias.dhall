
let AwsKmsAliasOptional =
  { name : Optional Text
  , name_prefix : Optional Text
  }

let AwsKmsAliasRequired =
  { target_key_id : Text }
let AwsKmsAlias = AwsKmsAliasOptional //\\ AwsKmsAliasRequired

in
{ AwsKmsAliasOptional = AwsKmsAliasOptional
, AwsKmsAliasRequired = AwsKmsAliasRequired
, AwsKmsAlias = AwsKmsAlias
}
