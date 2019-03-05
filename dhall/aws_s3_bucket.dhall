
let CorsRuleOptional =
  { allowed_headers: Optional (List Text)
  , expose_headers: Optional (List Text)
  , max_age_seconds: Optional Natural
  }

let CorsRuleRequired =
  { allowed_methods: (List Text)
  , allowed_origins: (List Text)
  }
let CorsRule = CorsRuleOptional //\\ CorsRuleRequired

let ExpirationOptional =
  { date: Optional Text
  , days: Optional Natural
  , expired_object_delete_marker: Optional Bool
  }

let ExpirationRequired = {}
let Expiration = ExpirationOptional //\\ ExpirationRequired

let NoncurrentVersionExpirationOptional =
  { days: Optional Natural }

let NoncurrentVersionExpirationRequired = {}
let NoncurrentVersionExpiration = NoncurrentVersionExpirationOptional //\\ NoncurrentVersionExpirationRequired

let NoncurrentVersionTransitionOptional =
  { days: Optional Natural }

let NoncurrentVersionTransitionRequired =
  { storage_class: Text }
let NoncurrentVersionTransition = NoncurrentVersionTransitionOptional //\\ NoncurrentVersionTransitionRequired

let TransitionOptional =
  { date: Optional Text
  , days: Optional Natural
  }

let TransitionRequired =
  { storage_class: Text }
let Transition = TransitionOptional //\\ TransitionRequired

let LifecycleRuleOptional =
  { abort_incomplete_multipart_upload_days: Optional Natural
  , id: Optional Text
  , prefix: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , expiration: Optional Expiration
  , noncurrent_version_expiration: Optional NoncurrentVersionExpiration
  , noncurrent_version_transition: Optional (List NoncurrentVersionTransition)
  , transition: Optional (List Transition)
  }

let LifecycleRuleRequired =
  { enabled: Bool }
let LifecycleRule = LifecycleRuleOptional //\\ LifecycleRuleRequired

let LoggingOptional =
  { target_prefix: Optional Text }

let LoggingRequired =
  { target_bucket: Text }
let Logging = LoggingOptional //\\ LoggingRequired

let DefaultRetentionOptional =
  { days: Optional Natural
  , years: Optional Natural
  }

let DefaultRetentionRequired =
  { mode: Text }
let DefaultRetention = DefaultRetentionOptional //\\ DefaultRetentionRequired

let RuleOptional = {}

let RuleRequired =
  { default_retention: DefaultRetention }
let Rule = RuleOptional //\\ RuleRequired

let ObjectLockConfigurationOptional =
  { rule: Optional Rule }

let ObjectLockConfigurationRequired =
  { object_lock_enabled: Text }
let ObjectLockConfiguration = ObjectLockConfigurationOptional //\\ ObjectLockConfigurationRequired

let AccessControlTranslationOptional = {}

let AccessControlTranslationRequired =
  { owner: Text }
let AccessControlTranslation = AccessControlTranslationOptional //\\ AccessControlTranslationRequired

let DestinationOptional =
  { account_id: Optional Text
  , replica_kms_key_id: Optional Text
  , storage_class: Optional Text
  }

let DestinationRequired =
  { bucket: Text
  , access_control_translation: AccessControlTranslation
  }
let Destination = DestinationOptional //\\ DestinationRequired

let FilterOptional =
  { prefix: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let FilterRequired = {}
let Filter = FilterOptional //\\ FilterRequired

let SseKmsEncryptedObjectsOptional = {}

let SseKmsEncryptedObjectsRequired =
  { enabled: Bool }
let SseKmsEncryptedObjects = SseKmsEncryptedObjectsOptional //\\ SseKmsEncryptedObjectsRequired

let SourceSelectionCriteriaOptional = {}

let SourceSelectionCriteriaRequired =
  { sse_kms_encrypted_objects: SseKmsEncryptedObjects }
let SourceSelectionCriteria = SourceSelectionCriteriaOptional //\\ SourceSelectionCriteriaRequired

let RulesOptional =
  { id: Optional Text
  , prefix: Optional Text
  , priority: Optional Natural
  }

let RulesRequired =
  { status: Text
  , destination: Destination
  , filter: Filter
  , source_selection_criteria: SourceSelectionCriteria
  }
let Rules = RulesOptional //\\ RulesRequired

let ReplicationConfigurationOptional = {}

let ReplicationConfigurationRequired =
  { role: Text
  , rules: List List Rules
  }
let ReplicationConfiguration = ReplicationConfigurationOptional //\\ ReplicationConfigurationRequired

let ApplyServerSideEncryptionByDefaultOptional =
  { kms_master_key_id: Optional Text }

let ApplyServerSideEncryptionByDefaultRequired =
  { sse_algorithm: Text }
let ApplyServerSideEncryptionByDefault = ApplyServerSideEncryptionByDefaultOptional //\\ ApplyServerSideEncryptionByDefaultRequired

let RuleOptional = {}

let RuleRequired =
  { apply_server_side_encryption_by_default: ApplyServerSideEncryptionByDefault }
let Rule = RuleOptional //\\ RuleRequired

let ServerSideEncryptionConfigurationOptional = {}

let ServerSideEncryptionConfigurationRequired =
  { rule: Rule }
let ServerSideEncryptionConfiguration = ServerSideEncryptionConfigurationOptional //\\ ServerSideEncryptionConfigurationRequired

let VersioningOptional =
  { enabled: Optional Bool
  , mfa_delete: Optional Bool
  }

let VersioningRequired = {}
let Versioning = VersioningOptional //\\ VersioningRequired

let WebsiteOptional =
  { error_document: Optional Text
  , index_document: Optional Text
  , redirect_all_requests_to: Optional Text
  , routing_rules: Optional Text
  }

let WebsiteRequired = {}
let Website = WebsiteOptional //\\ WebsiteRequired

let AwsS3BucketOptional =
  { acceleration_status: Optional Text
  , acl: Optional Text
  , arn: Optional Text
  , bucket: Optional Text
  , bucket_domain_name: Optional Text
  , bucket_prefix: Optional Text
  , bucket_regional_domain_name: Optional Text
  , force_destroy: Optional Bool
  , hosted_zone_id: Optional Text
  , policy: Optional Text
  , region: Optional Text
  , request_payer: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , website_domain: Optional Text
  , website_endpoint: Optional Text
  , cors_rule: Optional (List CorsRule)
  , lifecycle_rule: Optional (List LifecycleRule)
  , logging: Optional (List Logging)
  , object_lock_configuration: Optional ObjectLockConfiguration
  , replication_configuration: Optional ReplicationConfiguration
  , server_side_encryption_configuration: Optional ServerSideEncryptionConfiguration
  , versioning: Optional Versioning
  , website: Optional Website
  }

let AwsS3BucketRequired = {}
let AwsS3Bucket = AwsS3BucketOptional //\\ AwsS3BucketRequired

in
{ AwsS3BucketOptional = AwsS3BucketOptional
, AwsS3BucketRequired = AwsS3BucketRequired
, AwsS3Bucket = AwsS3Bucket
, WebsiteOptional = WebsiteOptional
, WebsiteRequired = WebsiteRequired
, Website = Website
, VersioningOptional = VersioningOptional
, VersioningRequired = VersioningRequired
, Versioning = Versioning
, ServerSideEncryptionConfiguration = ServerSideEncryptionConfiguration
, Rule = Rule
, ApplyServerSideEncryptionByDefaultOptional = ApplyServerSideEncryptionByDefaultOptional
, ApplyServerSideEncryptionByDefaultRequired = ApplyServerSideEncryptionByDefaultRequired
, ApplyServerSideEncryptionByDefault = ApplyServerSideEncryptionByDefault
, ReplicationConfiguration = ReplicationConfiguration
, RulesOptional = RulesOptional
, RulesRequired = RulesRequired
, Rules = Rules
, SourceSelectionCriteria = SourceSelectionCriteria
, SseKmsEncryptedObjects = SseKmsEncryptedObjects
, FilterOptional = FilterOptional
, FilterRequired = FilterRequired
, Filter = Filter
, DestinationOptional = DestinationOptional
, DestinationRequired = DestinationRequired
, Destination = Destination
, AccessControlTranslation = AccessControlTranslation
, ObjectLockConfigurationOptional = ObjectLockConfigurationOptional
, ObjectLockConfigurationRequired = ObjectLockConfigurationRequired
, ObjectLockConfiguration = ObjectLockConfiguration
, Rule = Rule
, DefaultRetentionOptional = DefaultRetentionOptional
, DefaultRetentionRequired = DefaultRetentionRequired
, DefaultRetention = DefaultRetention
, LoggingOptional = LoggingOptional
, LoggingRequired = LoggingRequired
, Logging = Logging
, LifecycleRuleOptional = LifecycleRuleOptional
, LifecycleRuleRequired = LifecycleRuleRequired
, LifecycleRule = LifecycleRule
, TransitionOptional = TransitionOptional
, TransitionRequired = TransitionRequired
, Transition = Transition
, NoncurrentVersionTransitionOptional = NoncurrentVersionTransitionOptional
, NoncurrentVersionTransitionRequired = NoncurrentVersionTransitionRequired
, NoncurrentVersionTransition = NoncurrentVersionTransition
, NoncurrentVersionExpirationOptional = NoncurrentVersionExpirationOptional
, NoncurrentVersionExpirationRequired = NoncurrentVersionExpirationRequired
, NoncurrentVersionExpiration = NoncurrentVersionExpiration
, ExpirationOptional = ExpirationOptional
, ExpirationRequired = ExpirationRequired
, Expiration = Expiration
, CorsRuleOptional = CorsRuleOptional
, CorsRuleRequired = CorsRuleRequired
, CorsRule = CorsRule
}
