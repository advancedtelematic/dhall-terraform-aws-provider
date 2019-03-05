
let AwsCloudfrontOriginAccessIdentityOptional =
  { caller_reference: Optional Text
  , cloudfront_access_identity_path: Optional Text
  , comment: Optional Text
  , etag: Optional Text
  , iam_arn: Optional Text
  , s3_canonical_user_id: Optional Text
  }

let AwsCloudfrontOriginAccessIdentityRequired = {}
let AwsCloudfrontOriginAccessIdentity = AwsCloudfrontOriginAccessIdentityOptional //\\ AwsCloudfrontOriginAccessIdentityRequired

in
{ AwsCloudfrontOriginAccessIdentityOptional = AwsCloudfrontOriginAccessIdentityOptional
, AwsCloudfrontOriginAccessIdentityRequired = AwsCloudfrontOriginAccessIdentityRequired
, AwsCloudfrontOriginAccessIdentity = AwsCloudfrontOriginAccessIdentity
}
