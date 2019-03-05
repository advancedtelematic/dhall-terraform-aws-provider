
let AwsCognitoIdentityProviderOptional =
  { attribute_mapping: Optional (List { mapKey : Text, mapValue : Text })
  , idp_identifiers: Optional (List Text)
  }

let AwsCognitoIdentityProviderRequired =
  { provider_details: (List { mapKey : Text, mapValue : Text })
  , provider_name: Text
  , provider_type: Text
  , user_pool_id: Text
  }
let AwsCognitoIdentityProvider = AwsCognitoIdentityProviderOptional //\\ AwsCognitoIdentityProviderRequired

in
{ AwsCognitoIdentityProviderOptional = AwsCognitoIdentityProviderOptional
, AwsCognitoIdentityProviderRequired = AwsCognitoIdentityProviderRequired
, AwsCognitoIdentityProvider = AwsCognitoIdentityProvider
}
