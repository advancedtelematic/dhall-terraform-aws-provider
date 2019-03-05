
let AwsIamOpenidConnectProviderOptional =
  { arn: Optional Text }

let AwsIamOpenidConnectProviderRequired =
  { client_id_list: (List Text)
  , thumbprint_list: (List Text)
  , url: Text
  }
let AwsIamOpenidConnectProvider = AwsIamOpenidConnectProviderOptional //\\ AwsIamOpenidConnectProviderRequired

in
{ AwsIamOpenidConnectProviderOptional = AwsIamOpenidConnectProviderOptional
, AwsIamOpenidConnectProviderRequired = AwsIamOpenidConnectProviderRequired
, AwsIamOpenidConnectProvider = AwsIamOpenidConnectProvider
}
