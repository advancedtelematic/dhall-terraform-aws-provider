
let AwsCloudfrontPublicKeyOptional =
  { caller_reference: Optional Text
  , comment: Optional Text
  , etag: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  }

let AwsCloudfrontPublicKeyRequired =
  { encoded_key: Text }
let AwsCloudfrontPublicKey = AwsCloudfrontPublicKeyOptional //\\ AwsCloudfrontPublicKeyRequired

in
{ AwsCloudfrontPublicKeyOptional = AwsCloudfrontPublicKeyOptional
, AwsCloudfrontPublicKeyRequired = AwsCloudfrontPublicKeyRequired
, AwsCloudfrontPublicKey = AwsCloudfrontPublicKey
}
