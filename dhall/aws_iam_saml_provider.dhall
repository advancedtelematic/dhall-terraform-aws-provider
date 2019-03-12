
let AwsIamSamlProviderOptional = {}

let AwsIamSamlProviderRequired =
  { name : Text
  , saml_metadata_document : Text
  }
let AwsIamSamlProvider = AwsIamSamlProviderOptional //\\ AwsIamSamlProviderRequired

in
{ AwsIamSamlProvider = AwsIamSamlProvider
}
