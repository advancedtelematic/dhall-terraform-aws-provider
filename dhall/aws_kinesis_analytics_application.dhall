
let CloudwatchLoggingOptionsOptional =
  { id: Optional Text }

let CloudwatchLoggingOptionsRequired =
  { log_stream_arn: Text
  , role_arn: Text
  }
let CloudwatchLoggingOptions = CloudwatchLoggingOptionsOptional //\\ CloudwatchLoggingOptionsRequired

let KinesisFirehoseOptional = {}

let KinesisFirehoseRequired =
  { resource_arn: Text
  , role_arn: Text
  }
let KinesisFirehose = KinesisFirehoseOptional //\\ KinesisFirehoseRequired

let KinesisStreamOptional = {}

let KinesisStreamRequired =
  { resource_arn: Text
  , role_arn: Text
  }
let KinesisStream = KinesisStreamOptional //\\ KinesisStreamRequired

let ParallelismOptional = {}

let ParallelismRequired =
  { count: Natural }
let Parallelism = ParallelismOptional //\\ ParallelismRequired

let LambdaOptional = {}

let LambdaRequired =
  { resource_arn: Text
  , role_arn: Text
  }
let Lambda = LambdaOptional //\\ LambdaRequired

let ProcessingConfigurationOptional = {}

let ProcessingConfigurationRequired =
  { lambda: Lambda }
let ProcessingConfiguration = ProcessingConfigurationOptional //\\ ProcessingConfigurationRequired

let RecordColumnsOptional =
  { mapping: Optional Text }

let RecordColumnsRequired =
  { name: Text
  , sql_type: Text
  }
let RecordColumns = RecordColumnsOptional //\\ RecordColumnsRequired

let CsvOptional = {}

let CsvRequired =
  { record_column_delimiter: Text
  , record_row_delimiter: Text
  }
let Csv = CsvOptional //\\ CsvRequired

let JsonOptional = {}

let JsonRequired =
  { record_row_path: Text }
let Json = JsonOptional //\\ JsonRequired

let MappingParametersOptional =
  { csv: Optional Csv
  , json: Optional Json
  }

let MappingParametersRequired = {}
let MappingParameters = MappingParametersOptional //\\ MappingParametersRequired

let RecordFormatOptional =
  { record_format_type: Optional Text
  , mapping_parameters: Optional MappingParameters
  }

let RecordFormatRequired = {}
let RecordFormat = RecordFormatOptional //\\ RecordFormatRequired

let SchemaOptional =
  { record_encoding: Optional Text }

let SchemaRequired =
  { record_columns: List List RecordColumns
  , record_format: RecordFormat
  }
let Schema = SchemaOptional //\\ SchemaRequired

let StartingPositionConfigurationOptional =
  { starting_position: Optional Text }

let StartingPositionConfigurationRequired = {}
let StartingPositionConfiguration = StartingPositionConfigurationOptional //\\ StartingPositionConfigurationRequired

let InputsOptional =
  { id: Optional Text
  , stream_names: Optional (List Text)
  , kinesis_firehose: Optional KinesisFirehose
  , kinesis_stream: Optional KinesisStream
  , parallelism: Optional Parallelism
  , processing_configuration: Optional ProcessingConfiguration
  , starting_position_configuration: Optional (List StartingPositionConfiguration)
  }

let InputsRequired =
  { name_prefix: Text
  , schema: Schema
  }
let Inputs = InputsOptional //\\ InputsRequired

let KinesisFirehoseOptional = {}

let KinesisFirehoseRequired =
  { resource_arn: Text
  , role_arn: Text
  }
let KinesisFirehose = KinesisFirehoseOptional //\\ KinesisFirehoseRequired

let KinesisStreamOptional = {}

let KinesisStreamRequired =
  { resource_arn: Text
  , role_arn: Text
  }
let KinesisStream = KinesisStreamOptional //\\ KinesisStreamRequired

let LambdaOptional = {}

let LambdaRequired =
  { resource_arn: Text
  , role_arn: Text
  }
let Lambda = LambdaOptional //\\ LambdaRequired

let SchemaOptional =
  { record_format_type: Optional Text }

let SchemaRequired = {}
let Schema = SchemaOptional //\\ SchemaRequired

let OutputsOptional =
  { id: Optional Text
  , kinesis_firehose: Optional KinesisFirehose
  , kinesis_stream: Optional KinesisStream
  , lambda: Optional Lambda
  }

let OutputsRequired =
  { name: Text
  , schema: Schema
  }
let Outputs = OutputsOptional //\\ OutputsRequired

let S3Optional = {}

let S3Required =
  { bucket_arn: Text
  , file_key: Text
  , role_arn: Text
  }
let S3 = S3Optional //\\ S3Required

let RecordColumnsOptional =
  { mapping: Optional Text }

let RecordColumnsRequired =
  { name: Text
  , sql_type: Text
  }
let RecordColumns = RecordColumnsOptional //\\ RecordColumnsRequired

let CsvOptional = {}

let CsvRequired =
  { record_column_delimiter: Text
  , record_row_delimiter: Text
  }
let Csv = CsvOptional //\\ CsvRequired

let JsonOptional = {}

let JsonRequired =
  { record_row_path: Text }
let Json = JsonOptional //\\ JsonRequired

let MappingParametersOptional =
  { csv: Optional Csv
  , json: Optional Json
  }

let MappingParametersRequired = {}
let MappingParameters = MappingParametersOptional //\\ MappingParametersRequired

let RecordFormatOptional =
  { record_format_type: Optional Text
  , mapping_parameters: Optional MappingParameters
  }

let RecordFormatRequired = {}
let RecordFormat = RecordFormatOptional //\\ RecordFormatRequired

let SchemaOptional =
  { record_encoding: Optional Text }

let SchemaRequired =
  { record_columns: List List RecordColumns
  , record_format: RecordFormat
  }
let Schema = SchemaOptional //\\ SchemaRequired

let ReferenceDataSourcesOptional =
  { id: Optional Text }

let ReferenceDataSourcesRequired =
  { table_name: Text
  , s3: S3
  , schema: Schema
  }
let ReferenceDataSources = ReferenceDataSourcesOptional //\\ ReferenceDataSourcesRequired

let AwsKinesisAnalyticsApplicationOptional =
  { arn: Optional Text
  , code: Optional Text
  , create_timestamp: Optional Text
  , description: Optional Text
  , last_update_timestamp: Optional Text
  , status: Optional Text
  , version: Optional Natural
  , cloudwatch_logging_options: Optional CloudwatchLoggingOptions
  , inputs: Optional Inputs
  , outputs: Optional (List Outputs)
  , reference_data_sources: Optional ReferenceDataSources
  }

let AwsKinesisAnalyticsApplicationRequired =
  { name: Text }
let AwsKinesisAnalyticsApplication = AwsKinesisAnalyticsApplicationOptional //\\ AwsKinesisAnalyticsApplicationRequired

in
{ AwsKinesisAnalyticsApplicationOptional = AwsKinesisAnalyticsApplicationOptional
, AwsKinesisAnalyticsApplicationRequired = AwsKinesisAnalyticsApplicationRequired
, AwsKinesisAnalyticsApplication = AwsKinesisAnalyticsApplication
, ReferenceDataSourcesOptional = ReferenceDataSourcesOptional
, ReferenceDataSourcesRequired = ReferenceDataSourcesRequired
, ReferenceDataSources = ReferenceDataSources
, SchemaOptional = SchemaOptional
, SchemaRequired = SchemaRequired
, Schema = Schema
, RecordFormatOptional = RecordFormatOptional
, RecordFormatRequired = RecordFormatRequired
, RecordFormat = RecordFormat
, MappingParametersOptional = MappingParametersOptional
, MappingParametersRequired = MappingParametersRequired
, MappingParameters = MappingParameters
, Json = Json
, Csv = Csv
, RecordColumnsOptional = RecordColumnsOptional
, RecordColumnsRequired = RecordColumnsRequired
, RecordColumns = RecordColumns
, S3 = S3
, OutputsOptional = OutputsOptional
, OutputsRequired = OutputsRequired
, Outputs = Outputs
, SchemaOptional = SchemaOptional
, SchemaRequired = SchemaRequired
, Schema = Schema
, Lambda = Lambda
, KinesisStream = KinesisStream
, KinesisFirehose = KinesisFirehose
, InputsOptional = InputsOptional
, InputsRequired = InputsRequired
, Inputs = Inputs
, StartingPositionConfigurationOptional = StartingPositionConfigurationOptional
, StartingPositionConfigurationRequired = StartingPositionConfigurationRequired
, StartingPositionConfiguration = StartingPositionConfiguration
, SchemaOptional = SchemaOptional
, SchemaRequired = SchemaRequired
, Schema = Schema
, RecordFormatOptional = RecordFormatOptional
, RecordFormatRequired = RecordFormatRequired
, RecordFormat = RecordFormat
, MappingParametersOptional = MappingParametersOptional
, MappingParametersRequired = MappingParametersRequired
, MappingParameters = MappingParameters
, Json = Json
, Csv = Csv
, RecordColumnsOptional = RecordColumnsOptional
, RecordColumnsRequired = RecordColumnsRequired
, RecordColumns = RecordColumns
, ProcessingConfiguration = ProcessingConfiguration
, Lambda = Lambda
, Parallelism = Parallelism
, KinesisStream = KinesisStream
, KinesisFirehose = KinesisFirehose
, CloudwatchLoggingOptionsOptional = CloudwatchLoggingOptionsOptional
, CloudwatchLoggingOptionsRequired = CloudwatchLoggingOptionsRequired
, CloudwatchLoggingOptions = CloudwatchLoggingOptions
}
