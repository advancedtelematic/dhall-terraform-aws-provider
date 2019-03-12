
let SseKmsOptional = {}

let SseKmsRequired =
  { key_id : Text }
let SseKms = SseKmsOptional //\\ SseKmsRequired

let SseS3Optional = {}

let SseS3Required = {}
let SseS3 = SseS3Optional //\\ SseS3Required

let EncryptionOptional =
  { sse_kms : Optional SseKms
  , sse_s3 : Optional SseS3
  }

let EncryptionRequired = {}
let Encryption = EncryptionOptional //\\ EncryptionRequired

let BucketOptional =
  { account_id : Optional Text
  , prefix : Optional Text
  , encryption : Optional Encryption
  }

let BucketRequired =
  { bucket_arn : Text
  , format : Text
  }
let Bucket = BucketOptional //\\ BucketRequired

let DestinationOptional = {}

let DestinationRequired =
  { bucket : Bucket }
let Destination = DestinationOptional //\\ DestinationRequired

let FilterOptional =
  { prefix : Optional Text }

let FilterRequired = {}
let Filter = FilterOptional //\\ FilterRequired

let ScheduleOptional = {}

let ScheduleRequired =
  { frequency : Text }
let Schedule = ScheduleOptional //\\ ScheduleRequired

let AwsS3BucketInventoryOptional =
  { enabled : Optional Bool
  , optional_fields : Optional (List Text)
  , filter : Optional Filter
  }

let AwsS3BucketInventoryRequired =
  { bucket : Text
  , included_object_versions : Text
  , name : Text
  , destination : Destination
  , schedule : Schedule
  }
let AwsS3BucketInventory = AwsS3BucketInventoryOptional //\\ AwsS3BucketInventoryRequired

in
{ AwsS3BucketInventoryOptional = AwsS3BucketInventoryOptional
, AwsS3BucketInventoryRequired = AwsS3BucketInventoryRequired
, AwsS3BucketInventory = AwsS3BucketInventory
, Schedule = Schedule
, FilterOptional = FilterOptional
, FilterRequired = FilterRequired
, Filter = Filter
, Destination = Destination
, BucketOptional = BucketOptional
, BucketRequired = BucketRequired
, Bucket = Bucket
, EncryptionOptional = EncryptionOptional
, EncryptionRequired = EncryptionRequired
, Encryption = Encryption
, SseS3 = SseS3
, SseKms = SseKms
}
