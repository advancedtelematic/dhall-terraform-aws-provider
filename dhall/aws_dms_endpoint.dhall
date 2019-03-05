
let MongodbSettingsOptional =
  { auth_mechanism: Optional Text
  , auth_source: Optional Text
  , auth_type: Optional Text
  , docs_to_investigate: Optional Text
  , extract_doc_id: Optional Text
  , nesting_level: Optional Text
  }

let MongodbSettingsRequired = {}
let MongodbSettings = MongodbSettingsOptional //\\ MongodbSettingsRequired

let S3SettingsOptional =
  { bucket_folder: Optional Text
  , bucket_name: Optional Text
  , compression_type: Optional Text
  , csv_delimiter: Optional Text
  , csv_row_delimiter: Optional Text
  , external_table_definition: Optional Text
  , service_access_role_arn: Optional Text
  }

let S3SettingsRequired = {}
let S3Settings = S3SettingsOptional //\\ S3SettingsRequired

let AwsDmsEndpointOptional =
  { certificate_arn: Optional Text
  , database_name: Optional Text
  , endpoint_arn: Optional Text
  , extra_connection_attributes: Optional Text
  , kms_key_arn: Optional Text
  , password: Optional Text
  , port: Optional Natural
  , server_name: Optional Text
  , service_access_role: Optional Text
  , ssl_mode: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , username: Optional Text
  , mongodb_settings: Optional MongodbSettings
  , s3_settings: Optional S3Settings
  }

let AwsDmsEndpointRequired =
  { endpoint_id: Text
  , endpoint_type: Text
  , engine_name: Text
  }
let AwsDmsEndpoint = AwsDmsEndpointOptional //\\ AwsDmsEndpointRequired

in
{ AwsDmsEndpointOptional = AwsDmsEndpointOptional
, AwsDmsEndpointRequired = AwsDmsEndpointRequired
, AwsDmsEndpoint = AwsDmsEndpoint
, S3SettingsOptional = S3SettingsOptional
, S3SettingsRequired = S3SettingsRequired
, S3Settings = S3Settings
, MongodbSettingsOptional = MongodbSettingsOptional
, MongodbSettingsRequired = MongodbSettingsRequired
, MongodbSettings = MongodbSettings
}
