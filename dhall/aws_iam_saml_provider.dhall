
let AwsIamSamlProviderOptional =
  { arn: Optional Text
  , valid_until: Optional Text
  }

let AwsIamSamlProviderRequired =
  { name: Text
  , saml_metadata_document: Text
  }
let AwsIamSamlProvider = AwsIamSamlProviderOptional //\\ AwsIamSamlProviderRequired

in
{ AwsIamSamlProviderOptional = AwsIamSamlProviderOptional
, AwsIamSamlProviderRequired = AwsIamSamlProviderRequired
, AwsIamSamlProvider = AwsIamSamlProvider
}
