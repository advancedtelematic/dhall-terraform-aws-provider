
let awsCognitoIdentityProvider =
  { attribute_mapping = None (List { mapKey : Text, mapValue : Text })
  , idp_identifiers = None (List Text)
  }

in
{ awsCognitoIdentityProvider = awsCognitoIdentityProvider
}
