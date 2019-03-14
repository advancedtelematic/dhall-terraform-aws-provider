
let sseKms = {}

let sseS3 = {}

let encryption =
  { sse_kms = None (../dhall/aws_s3_bucket_inventory.dhall).SseKms
  , sse_s3 = None (../dhall/aws_s3_bucket_inventory.dhall).SseS3
  }

let bucket =
  { account_id = None Text
  , prefix = None Text
  , encryption = None (../dhall/aws_s3_bucket_inventory.dhall).Encryption
  }

let destination = {}

let filter =
  { prefix = None Text }

let schedule = {}

let awsS3BucketInventory =
  { enabled = None Bool
  , optional_fields = None (List Text)
  , filter = None (../dhall/aws_s3_bucket_inventory.dhall).Filter
  }

in
{ awsS3BucketInventory = awsS3BucketInventory
, filter = filter
, bucket = bucket
, encryption = encryption
}
