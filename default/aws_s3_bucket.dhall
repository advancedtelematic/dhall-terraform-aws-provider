
let corsRule =
  { allowed_headers = None (List Text)
  , expose_headers = None (List Text)
  , max_age_seconds = None Natural
  }

let expiration =
  { date = None Text
  , days = None Natural
  , expired_object_delete_marker = None Bool
  }

let noncurrentVersionExpiration =
  { days = None Natural }

let noncurrentVersionTransition =
  { days = None Natural }

let transition =
  { date = None Text
  , days = None Natural
  }

let lifecycleRule =
  { abort_incomplete_multipart_upload_days = None Natural
  , id = None Text
  , prefix = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , expiration = None (../dhall/aws_s3_bucket.dhall).Expiration
  , noncurrent_version_expiration = None (../dhall/aws_s3_bucket.dhall).NoncurrentVersionExpiration
  , noncurrent_version_transition = None (List (../dhall/aws_s3_bucket.dhall).NoncurrentVersionTransition)
  , transition = None (List (../dhall/aws_s3_bucket.dhall).Transition)
  }

let logging =
  { target_prefix = None Text }

let defaultRetention =
  { days = None Natural
  , years = None Natural
  }

let rule = {}

let objectLockConfiguration =
  { rule = None (../dhall/aws_s3_bucket.dhall).Rule }

let accessControlTranslation = {}

let destination =
  { account_id = None Text
  , replica_kms_key_id = None Text
  , storage_class = None Text
  }

let filter =
  { prefix = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

let sseKmsEncryptedObjects = {}

let sourceSelectionCriteria = {}

let rules =
  { id = None Text
  , prefix = None Text
  , priority = None Natural
  }

let replicationConfiguration = {}

let applyServerSideEncryptionByDefault =
  { kms_master_key_id = None Text }

let rule = {}

let serverSideEncryptionConfiguration = {}

let versioning =
  { enabled = None Bool
  , mfa_delete = None Bool
  }

let website =
  { error_document = None Text
  , index_document = None Text
  , redirect_all_requests_to = None Text
  , routing_rules = None Text
  }

let awsS3Bucket =
  { acceleration_status = None Text
  , acl = None Text
  , arn = None Text
  , bucket = None Text
  , bucket_prefix = None Text
  , force_destroy = None Bool
  , hosted_zone_id = None Text
  , policy = None Text
  , region = None Text
  , request_payer = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , website_domain = None Text
  , website_endpoint = None Text
  , cors_rule = None (List (../dhall/aws_s3_bucket.dhall).CorsRule)
  , lifecycle_rule = None (List (../dhall/aws_s3_bucket.dhall).LifecycleRule)
  , logging = None (List (../dhall/aws_s3_bucket.dhall).Logging)
  , object_lock_configuration = None (../dhall/aws_s3_bucket.dhall).ObjectLockConfiguration
  , replication_configuration = None (../dhall/aws_s3_bucket.dhall).ReplicationConfiguration
  , server_side_encryption_configuration = None (../dhall/aws_s3_bucket.dhall).ServerSideEncryptionConfiguration
  , versioning = None (../dhall/aws_s3_bucket.dhall).Versioning
  , website = None (../dhall/aws_s3_bucket.dhall).Website
  }

in
{ awsS3Bucket = awsS3Bucket
, website = website
, versioning = versioning
, applyServerSideEncryptionByDefault = applyServerSideEncryptionByDefault
, rules = rules
, filter = filter
, destination = destination
, objectLockConfiguration = objectLockConfiguration
, defaultRetention = defaultRetention
, logging = logging
, lifecycleRule = lifecycleRule
, transition = transition
, noncurrentVersionTransition = noncurrentVersionTransition
, noncurrentVersionExpiration = noncurrentVersionExpiration
, expiration = expiration
, corsRule = corsRule
}
