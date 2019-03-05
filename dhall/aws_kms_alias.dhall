
let AwsKmsAliasOptional =
  { arn: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , target_key_arn: Optional Text
  }

let AwsKmsAliasRequired =
  { target_key_id: Text }
let AwsKmsAlias = AwsKmsAliasOptional //\\ AwsKmsAliasRequired

in
{ AwsKmsAliasOptional = AwsKmsAliasOptional
, AwsKmsAliasRequired = AwsKmsAliasRequired
, AwsKmsAlias = AwsKmsAlias
}
