
let clusterConfig =
  { dedicated_master_count = None Natural
  , dedicated_master_enabled = None Bool
  , dedicated_master_type = None Text
  , instance_count = None Natural
  , instance_type = None Text
  , zone_awareness_enabled = None Bool
  }

let cognitoOptions =
  { enabled = None Bool }

let ebsOptions =
  { iops = None Natural
  , volume_size = None Natural
  , volume_type = None Text
  }

let encryptAtRest =
  { kms_key_id = None Text }

let logPublishingOptions =
  { enabled = None Bool }

let nodeToNodeEncryption = {}

let snapshotOptions = {}

let vpcOptions =
  { security_group_ids = None (List Text)
  , subnet_ids = None (List Text)
  }

let awsElasticsearchDomain =
  { access_policies = None Text
  , advanced_options = None (List { mapKey : Text, mapValue : Text })
  , elasticsearch_version = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , cluster_config = None (../dhall/aws_elasticsearch_domain.dhall).ClusterConfig
  , cognito_options = None (../dhall/aws_elasticsearch_domain.dhall).CognitoOptions
  , ebs_options = None (../dhall/aws_elasticsearch_domain.dhall).EbsOptions
  , encrypt_at_rest = None (../dhall/aws_elasticsearch_domain.dhall).EncryptAtRest
  , log_publishing_options = None (List (../dhall/aws_elasticsearch_domain.dhall).LogPublishingOptions)
  , node_to_node_encryption = None (../dhall/aws_elasticsearch_domain.dhall).NodeToNodeEncryption
  , snapshot_options = None (../dhall/aws_elasticsearch_domain.dhall).SnapshotOptions
  , vpc_options = None (../dhall/aws_elasticsearch_domain.dhall).VpcOptions
  }

in
{ awsElasticsearchDomain = awsElasticsearchDomain
, vpcOptions = vpcOptions
, logPublishingOptions = logPublishingOptions
, encryptAtRest = encryptAtRest
, ebsOptions = ebsOptions
, cognitoOptions = cognitoOptions
, clusterConfig = clusterConfig
}
