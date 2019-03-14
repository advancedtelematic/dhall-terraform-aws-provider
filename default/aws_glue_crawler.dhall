
let dynamodbTarget = {}

let jdbcTarget =
  { exclusions = None (List Text) }

let s3Target =
  { exclusions = None (List Text) }

let schemaChangePolicy =
  { delete_behavior = None Text
  , update_behavior = None Text
  }

let awsGlueCrawler =
  { classifiers = None (List Text)
  , configuration = None Text
  , description = None Text
  , schedule = None Text
  , security_configuration = None Text
  , table_prefix = None Text
  , schema_change_policy = None (../dhall/aws_glue_crawler.dhall).SchemaChangePolicy
  }

in
{ awsGlueCrawler = awsGlueCrawler
, schemaChangePolicy = schemaChangePolicy
, s3Target = s3Target
, jdbcTarget = jdbcTarget
}
