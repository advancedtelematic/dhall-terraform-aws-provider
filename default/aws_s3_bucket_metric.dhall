
let filter =
  { prefix = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

let awsS3BucketMetric =
  { filter = None (../dhall/aws_s3_bucket_metric.dhall).Filter }

in
{ awsS3BucketMetric = awsS3BucketMetric
, filter = filter
}
