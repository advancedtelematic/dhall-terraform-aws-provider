
let mongodbSettings =
  { auth_mechanism = None Text
  , auth_source = None Text
  , auth_type = None Text
  , docs_to_investigate = None Text
  , extract_doc_id = None Text
  , nesting_level = None Text
  }

let s3Settings =
  { bucket_folder = None Text
  , bucket_name = None Text
  , compression_type = None Text
  , csv_delimiter = None Text
  , csv_row_delimiter = None Text
  , external_table_definition = None Text
  , service_access_role_arn = None Text
  }

let awsDmsEndpoint =
  { certificate_arn = None Text
  , database_name = None Text
  , extra_connection_attributes = None Text
  , kms_key_arn = None Text
  , password = None Text
  , port = None Natural
  , server_name = None Text
  , service_access_role = None Text
  , ssl_mode = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , username = None Text
  , mongodb_settings = None (../dhall/aws_dms_endpoint.dhall).MongodbSettings
  , s3_settings = None (../dhall/aws_dms_endpoint.dhall).S3Settings
  }

in
{ awsDmsEndpoint = awsDmsEndpoint
, s3Settings = s3Settings
, mongodbSettings = mongodbSettings
}
