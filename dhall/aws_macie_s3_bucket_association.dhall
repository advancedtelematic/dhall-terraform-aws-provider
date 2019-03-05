
let ClassificationTypeOptional =
  { continuous: Optional Text
  , one_time: Optional Text
  }

let ClassificationTypeRequired = {}
let ClassificationType = ClassificationTypeOptional //\\ ClassificationTypeRequired

let AwsMacieS3BucketAssociationOptional =
  { member_account_id: Optional Text
  , prefix: Optional Text
  , classification_type: Optional ClassificationType
  }

let AwsMacieS3BucketAssociationRequired =
  { bucket_name: Text }
let AwsMacieS3BucketAssociation = AwsMacieS3BucketAssociationOptional //\\ AwsMacieS3BucketAssociationRequired

in
{ AwsMacieS3BucketAssociationOptional = AwsMacieS3BucketAssociationOptional
, AwsMacieS3BucketAssociationRequired = AwsMacieS3BucketAssociationRequired
, AwsMacieS3BucketAssociation = AwsMacieS3BucketAssociation
, ClassificationTypeOptional = ClassificationTypeOptional
, ClassificationTypeRequired = ClassificationTypeRequired
, ClassificationType = ClassificationType
}
