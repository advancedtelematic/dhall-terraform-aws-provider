
let ClusterConfigOptional =
  { dedicated_master_count : Optional Natural
  , dedicated_master_enabled : Optional Bool
  , dedicated_master_type : Optional Text
  , instance_count : Optional Natural
  , instance_type : Optional Text
  , zone_awareness_enabled : Optional Bool
  }

let ClusterConfigRequired = {}
let ClusterConfig = ClusterConfigOptional //\\ ClusterConfigRequired

let CognitoOptionsOptional =
  { enabled : Optional Bool }

let CognitoOptionsRequired =
  { identity_pool_id : Text
  , role_arn : Text
  , user_pool_id : Text
  }
let CognitoOptions = CognitoOptionsOptional //\\ CognitoOptionsRequired

let EbsOptionsOptional =
  { iops : Optional Natural
  , volume_size : Optional Natural
  , volume_type : Optional Text
  }

let EbsOptionsRequired =
  { ebs_enabled : Bool }
let EbsOptions = EbsOptionsOptional //\\ EbsOptionsRequired

let EncryptAtRestOptional =
  { kms_key_id : Optional Text }

let EncryptAtRestRequired =
  { enabled : Bool }
let EncryptAtRest = EncryptAtRestOptional //\\ EncryptAtRestRequired

let LogPublishingOptionsOptional =
  { enabled : Optional Bool }

let LogPublishingOptionsRequired =
  { cloudwatch_log_group_arn : Text
  , log_type : Text
  }
let LogPublishingOptions = LogPublishingOptionsOptional //\\ LogPublishingOptionsRequired

let NodeToNodeEncryptionOptional = {}

let NodeToNodeEncryptionRequired =
  { enabled : Bool }
let NodeToNodeEncryption = NodeToNodeEncryptionOptional //\\ NodeToNodeEncryptionRequired

let SnapshotOptionsOptional = {}

let SnapshotOptionsRequired =
  { automated_snapshot_start_hour : Natural }
let SnapshotOptions = SnapshotOptionsOptional //\\ SnapshotOptionsRequired

let VpcOptionsOptional =
  { security_group_ids : Optional (List Text)
  , subnet_ids : Optional (List Text)
  }

let VpcOptionsRequired = {}
let VpcOptions = VpcOptionsOptional //\\ VpcOptionsRequired

let AwsElasticsearchDomainOptional =
  { access_policies : Optional Text
  , advanced_options : Optional (List { mapKey : Text, mapValue : Text })
  , elasticsearch_version : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , cluster_config : Optional ClusterConfig
  , cognito_options : Optional CognitoOptions
  , ebs_options : Optional EbsOptions
  , encrypt_at_rest : Optional EncryptAtRest
  , log_publishing_options : Optional (List LogPublishingOptions)
  , node_to_node_encryption : Optional NodeToNodeEncryption
  , snapshot_options : Optional SnapshotOptions
  , vpc_options : Optional VpcOptions
  }

let AwsElasticsearchDomainRequired =
  { domain_name : Text }
let AwsElasticsearchDomain = AwsElasticsearchDomainOptional //\\ AwsElasticsearchDomainRequired

in
{ AwsElasticsearchDomainOptional = AwsElasticsearchDomainOptional
, AwsElasticsearchDomainRequired = AwsElasticsearchDomainRequired
, AwsElasticsearchDomain = AwsElasticsearchDomain
, VpcOptionsOptional = VpcOptionsOptional
, VpcOptionsRequired = VpcOptionsRequired
, VpcOptions = VpcOptions
, SnapshotOptions = SnapshotOptions
, NodeToNodeEncryption = NodeToNodeEncryption
, LogPublishingOptionsOptional = LogPublishingOptionsOptional
, LogPublishingOptionsRequired = LogPublishingOptionsRequired
, LogPublishingOptions = LogPublishingOptions
, EncryptAtRestOptional = EncryptAtRestOptional
, EncryptAtRestRequired = EncryptAtRestRequired
, EncryptAtRest = EncryptAtRest
, EbsOptionsOptional = EbsOptionsOptional
, EbsOptionsRequired = EbsOptionsRequired
, EbsOptions = EbsOptions
, CognitoOptionsOptional = CognitoOptionsOptional
, CognitoOptionsRequired = CognitoOptionsRequired
, CognitoOptions = CognitoOptions
, ClusterConfigOptional = ClusterConfigOptional
, ClusterConfigRequired = ClusterConfigRequired
, ClusterConfig = ClusterConfig
}
