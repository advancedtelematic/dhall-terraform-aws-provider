
let AwsIotRoleAliasOptional =
  { credential_duration: Optional Natural }

let AwsIotRoleAliasRequired =
  { alias: Text
  , role_arn: Text
  }
let AwsIotRoleAlias = AwsIotRoleAliasOptional //\\ AwsIotRoleAliasRequired

in
{ AwsIotRoleAliasOptional = AwsIotRoleAliasOptional
, AwsIotRoleAliasRequired = AwsIotRoleAliasRequired
, AwsIotRoleAlias = AwsIotRoleAlias
}
