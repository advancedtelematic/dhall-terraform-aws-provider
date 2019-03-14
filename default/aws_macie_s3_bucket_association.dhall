
let classificationType =
  { continuous = None Text
  , one_time = None Text
  }

let awsMacieS3BucketAssociation =
  { member_account_id = None Text
  , prefix = None Text
  , classification_type = None (../dhall/aws_macie_s3_bucket_association.dhall).ClassificationType
  }

in
{ awsMacieS3BucketAssociation = awsMacieS3BucketAssociation
, classificationType = classificationType
}
