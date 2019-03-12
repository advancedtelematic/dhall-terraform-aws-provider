
let DynamodbTargetOptional = {}

let DynamodbTargetRequired =
  { path : Text }
let DynamodbTarget = DynamodbTargetOptional //\\ DynamodbTargetRequired

let JdbcTargetOptional =
  { exclusions : Optional (List Text) }

let JdbcTargetRequired =
  { connection_name : Text
  , path : Text
  }
let JdbcTarget = JdbcTargetOptional //\\ JdbcTargetRequired

let S3TargetOptional =
  { exclusions : Optional (List Text) }

let S3TargetRequired =
  { path : Text }
let S3Target = S3TargetOptional //\\ S3TargetRequired

let SchemaChangePolicyOptional =
  { delete_behavior : Optional Text
  , update_behavior : Optional Text
  }

let SchemaChangePolicyRequired = {}
let SchemaChangePolicy = SchemaChangePolicyOptional //\\ SchemaChangePolicyRequired

let AwsGlueCrawlerOptional =
  { classifiers : Optional (List Text)
  , configuration : Optional Text
  , description : Optional Text
  , schedule : Optional Text
  , security_configuration : Optional Text
  , table_prefix : Optional Text
  , schema_change_policy : Optional SchemaChangePolicy
  }

let AwsGlueCrawlerRequired =
  { database_name : Text
  , name : Text
  , role : Text
  , dynamodb_target : List DynamodbTarget
  , jdbc_target : List JdbcTarget
  , s3_target : List S3Target
  }
let AwsGlueCrawler = AwsGlueCrawlerOptional //\\ AwsGlueCrawlerRequired

in
{ AwsGlueCrawlerOptional = AwsGlueCrawlerOptional
, AwsGlueCrawlerRequired = AwsGlueCrawlerRequired
, AwsGlueCrawler = AwsGlueCrawler
, SchemaChangePolicyOptional = SchemaChangePolicyOptional
, SchemaChangePolicyRequired = SchemaChangePolicyRequired
, SchemaChangePolicy = SchemaChangePolicy
, S3TargetOptional = S3TargetOptional
, S3TargetRequired = S3TargetRequired
, S3Target = S3Target
, JdbcTargetOptional = JdbcTargetOptional
, JdbcTargetRequired = JdbcTargetRequired
, JdbcTarget = JdbcTarget
, DynamodbTarget = DynamodbTarget
}
