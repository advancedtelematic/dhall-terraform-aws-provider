
let AttributeOptional = {}

let AttributeRequired =
  { name: Text
  , type: Text
  }
let Attribute = AttributeOptional //\\ AttributeRequired

let GlobalSecondaryIndexOptional =
  { non_key_attributes: Optional (List Text)
  , range_key: Optional Text
  , read_capacity: Optional Natural
  , write_capacity: Optional Natural
  }

let GlobalSecondaryIndexRequired =
  { hash_key: Text
  , name: Text
  , projection_type: Text
  }
let GlobalSecondaryIndex = GlobalSecondaryIndexOptional //\\ GlobalSecondaryIndexRequired

let LocalSecondaryIndexOptional =
  { non_key_attributes: Optional (List Text) }

let LocalSecondaryIndexRequired =
  { name: Text
  , projection_type: Text
  , range_key: Text
  }
let LocalSecondaryIndex = LocalSecondaryIndexOptional //\\ LocalSecondaryIndexRequired

let PointInTimeRecoveryOptional = {}

let PointInTimeRecoveryRequired =
  { enabled: Bool }
let PointInTimeRecovery = PointInTimeRecoveryOptional //\\ PointInTimeRecoveryRequired

let ServerSideEncryptionOptional = {}

let ServerSideEncryptionRequired =
  { enabled: Bool }
let ServerSideEncryption = ServerSideEncryptionOptional //\\ ServerSideEncryptionRequired

let TtlOptional = {}

let TtlRequired =
  { attribute_name: Text
  , enabled: Bool
  }
let Ttl = TtlOptional //\\ TtlRequired

let AwsDynamodbTableOptional =
  { arn: Optional Text
  , billing_mode: Optional Text
  , range_key: Optional Text
  , read_capacity: Optional Natural
  , stream_arn: Optional Text
  , stream_enabled: Optional Bool
  , stream_label: Optional Text
  , stream_view_type: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , write_capacity: Optional Natural
  , global_secondary_index: Optional (List GlobalSecondaryIndex)
  , local_secondary_index: Optional (List LocalSecondaryIndex)
  , point_in_time_recovery: Optional PointInTimeRecovery
  , server_side_encryption: Optional ServerSideEncryption
  , ttl: Optional Ttl
  }

let AwsDynamodbTableRequired =
  { hash_key: Text
  , name: Text
  , attribute: List List Attribute
  }
let AwsDynamodbTable = AwsDynamodbTableOptional //\\ AwsDynamodbTableRequired

in
{ AwsDynamodbTableOptional = AwsDynamodbTableOptional
, AwsDynamodbTableRequired = AwsDynamodbTableRequired
, AwsDynamodbTable = AwsDynamodbTable
, Ttl = Ttl
, ServerSideEncryption = ServerSideEncryption
, PointInTimeRecovery = PointInTimeRecovery
, LocalSecondaryIndexOptional = LocalSecondaryIndexOptional
, LocalSecondaryIndexRequired = LocalSecondaryIndexRequired
, LocalSecondaryIndex = LocalSecondaryIndex
, GlobalSecondaryIndexOptional = GlobalSecondaryIndexOptional
, GlobalSecondaryIndexRequired = GlobalSecondaryIndexRequired
, GlobalSecondaryIndex = GlobalSecondaryIndex
, Attribute = Attribute
}
