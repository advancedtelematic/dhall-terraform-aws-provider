
let dynamodbConfig =
  { region = None Text
  , use_caller_credentials = None Bool
  }

let elasticsearchConfig =
  { region = None Text }

let httpConfig = {}

let lambdaConfig = {}

let awsAppsyncDatasource =
  { description = None Text
  , service_role_arn = None Text
  , dynamodb_config = None (../dhall/aws_appsync_datasource.dhall).DynamodbConfig
  , elasticsearch_config = None (../dhall/aws_appsync_datasource.dhall).ElasticsearchConfig
  , http_config = None (../dhall/aws_appsync_datasource.dhall).HttpConfig
  , lambda_config = None (../dhall/aws_appsync_datasource.dhall).LambdaConfig
  }

in
{ awsAppsyncDatasource = awsAppsyncDatasource
, elasticsearchConfig = elasticsearchConfig
, dynamodbConfig = dynamodbConfig
}
