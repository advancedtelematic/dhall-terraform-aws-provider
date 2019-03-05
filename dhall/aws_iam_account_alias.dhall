
let AwsIamAccountAliasOptional = {}

let AwsIamAccountAliasRequired =
  { account_alias: Text }
let AwsIamAccountAlias = AwsIamAccountAliasOptional //\\ AwsIamAccountAliasRequired

in
{ AwsIamAccountAlias = AwsIamAccountAlias
}
