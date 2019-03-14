
let attribute = {}

let globalSecondaryIndex =
  { non_key_attributes = None (List Text)
  , range_key = None Text
  , read_capacity = None Natural
  , write_capacity = None Natural
  }

let localSecondaryIndex =
  { non_key_attributes = None (List Text) }

let pointInTimeRecovery = {}

let serverSideEncryption = {}

let ttl = {}

let awsDynamodbTable =
  { billing_mode = None Text
  , range_key = None Text
  , read_capacity = None Natural
  , stream_enabled = None Bool
  , stream_view_type = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , write_capacity = None Natural
  , global_secondary_index = None (List (../dhall/aws_dynamodb_table.dhall).GlobalSecondaryIndex)
  , local_secondary_index = None (List (../dhall/aws_dynamodb_table.dhall).LocalSecondaryIndex)
  , point_in_time_recovery = None (../dhall/aws_dynamodb_table.dhall).PointInTimeRecovery
  , server_side_encryption = None (../dhall/aws_dynamodb_table.dhall).ServerSideEncryption
  , ttl = None (../dhall/aws_dynamodb_table.dhall).Ttl
  }

in
{ awsDynamodbTable = awsDynamodbTable
, localSecondaryIndex = localSecondaryIndex
, globalSecondaryIndex = globalSecondaryIndex
}
