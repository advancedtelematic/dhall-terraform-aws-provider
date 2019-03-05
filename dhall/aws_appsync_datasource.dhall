
let DynamodbConfigOptional =
  { region: Optional Text
  , use_caller_credentials: Optional Bool
  }

let DynamodbConfigRequired =
  { table_name: Text }
let DynamodbConfig = DynamodbConfigOptional //\\ DynamodbConfigRequired

let ElasticsearchConfigOptional =
  { region: Optional Text }

let ElasticsearchConfigRequired =
  { endpoint: Text }
let ElasticsearchConfig = ElasticsearchConfigOptional //\\ ElasticsearchConfigRequired

let HttpConfigOptional = {}

let HttpConfigRequired =
  { endpoint: Text }
let HttpConfig = HttpConfigOptional //\\ HttpConfigRequired

let LambdaConfigOptional = {}

let LambdaConfigRequired =
  { function_arn: Text }
let LambdaConfig = LambdaConfigOptional //\\ LambdaConfigRequired

let AwsAppsyncDatasourceOptional =
  { arn: Optional Text
  , description: Optional Text
  , service_role_arn: Optional Text
  , dynamodb_config: Optional DynamodbConfig
  , elasticsearch_config: Optional ElasticsearchConfig
  , http_config: Optional HttpConfig
  , lambda_config: Optional LambdaConfig
  }

let AwsAppsyncDatasourceRequired =
  { api_id: Text
  , name: Text
  , type: Text
  }
let AwsAppsyncDatasource = AwsAppsyncDatasourceOptional //\\ AwsAppsyncDatasourceRequired

in
{ AwsAppsyncDatasourceOptional = AwsAppsyncDatasourceOptional
, AwsAppsyncDatasourceRequired = AwsAppsyncDatasourceRequired
, AwsAppsyncDatasource = AwsAppsyncDatasource
, LambdaConfig = LambdaConfig
, HttpConfig = HttpConfig
, ElasticsearchConfigOptional = ElasticsearchConfigOptional
, ElasticsearchConfigRequired = ElasticsearchConfigRequired
, ElasticsearchConfig = ElasticsearchConfig
, DynamodbConfigOptional = DynamodbConfigOptional
, DynamodbConfigRequired = DynamodbConfigRequired
, DynamodbConfig = DynamodbConfig
}
