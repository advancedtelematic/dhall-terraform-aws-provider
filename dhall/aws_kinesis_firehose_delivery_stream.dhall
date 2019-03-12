
let CloudwatchLoggingOptionsOptional =
  { enabled : Optional Bool
  , log_group_name : Optional Text
  , log_stream_name : Optional Text
  }

let CloudwatchLoggingOptionsRequired = {}
let CloudwatchLoggingOptions = CloudwatchLoggingOptionsOptional //\\ CloudwatchLoggingOptionsRequired

let ParametersOptional = {}

let ParametersRequired =
  { parameter_name : Text
  , parameter_value : Text
  }
let Parameters = ParametersOptional //\\ ParametersRequired

let ProcessorsOptional =
  { parameters : Optional (List Parameters) }

let ProcessorsRequired =
  { type : Text }
let Processors = ProcessorsOptional //\\ ProcessorsRequired

let ProcessingConfigurationOptional =
  { enabled : Optional Bool
  , processors : Optional (List Processors)
  }

let ProcessingConfigurationRequired = {}
let ProcessingConfiguration = ProcessingConfigurationOptional //\\ ProcessingConfigurationRequired

let ElasticsearchConfigurationOptional =
  { buffering_interval : Optional Natural
  , buffering_size : Optional Natural
  , index_rotation_period : Optional Text
  , retry_duration : Optional Natural
  , s3_backup_mode : Optional Text
  , type_name : Optional Text
  , cloudwatch_logging_options : Optional CloudwatchLoggingOptions
  , processing_configuration : Optional ProcessingConfiguration
  }

let ElasticsearchConfigurationRequired =
  { domain_arn : Text
  , index_name : Text
  , role_arn : Text
  }
let ElasticsearchConfiguration = ElasticsearchConfigurationOptional //\\ ElasticsearchConfigurationRequired

let CloudwatchLoggingOptionsOptional =
  { enabled : Optional Bool
  , log_group_name : Optional Text
  , log_stream_name : Optional Text
  }

let CloudwatchLoggingOptionsRequired = {}
let CloudwatchLoggingOptions = CloudwatchLoggingOptionsOptional //\\ CloudwatchLoggingOptionsRequired

let HiveJsonSerDeOptional =
  { timestamp_formats : Optional (List Text) }

let HiveJsonSerDeRequired = {}
let HiveJsonSerDe = HiveJsonSerDeOptional //\\ HiveJsonSerDeRequired

let OpenXJsonSerDeOptional =
  { case_insensitive : Optional Bool
  , column_to_json_key_mappings : Optional (List { mapKey : Text, mapValue : Text })
  , convert_dots_in_json_keys_to_underscores : Optional Bool
  }

let OpenXJsonSerDeRequired = {}
let OpenXJsonSerDe = OpenXJsonSerDeOptional //\\ OpenXJsonSerDeRequired

let DeserializerOptional =
  { hive_json_ser_de : Optional HiveJsonSerDe
  , open_x_json_ser_de : Optional OpenXJsonSerDe
  }

let DeserializerRequired = {}
let Deserializer = DeserializerOptional //\\ DeserializerRequired

let InputFormatConfigurationOptional = {}

let InputFormatConfigurationRequired =
  { deserializer : Deserializer }
let InputFormatConfiguration = InputFormatConfigurationOptional //\\ InputFormatConfigurationRequired

let OrcSerDeOptional =
  { block_size_bytes : Optional Natural
  , bloom_filter_columns : Optional (List Text)
  , bloom_filter_false_positive_probability : Optional Natural
  , compression : Optional Text
  , dictionary_key_threshold : Optional Natural
  , enable_padding : Optional Bool
  , format_version : Optional Text
  , padding_tolerance : Optional Natural
  , row_index_stride : Optional Natural
  , stripe_size_bytes : Optional Natural
  }

let OrcSerDeRequired = {}
let OrcSerDe = OrcSerDeOptional //\\ OrcSerDeRequired

let ParquetSerDeOptional =
  { block_size_bytes : Optional Natural
  , compression : Optional Text
  , enable_dictionary_compression : Optional Bool
  , max_padding_bytes : Optional Natural
  , page_size_bytes : Optional Natural
  , writer_version : Optional Text
  }

let ParquetSerDeRequired = {}
let ParquetSerDe = ParquetSerDeOptional //\\ ParquetSerDeRequired

let SerializerOptional =
  { orc_ser_de : Optional OrcSerDe
  , parquet_ser_de : Optional ParquetSerDe
  }

let SerializerRequired = {}
let Serializer = SerializerOptional //\\ SerializerRequired

let OutputFormatConfigurationOptional = {}

let OutputFormatConfigurationRequired =
  { serializer : Serializer }
let OutputFormatConfiguration = OutputFormatConfigurationOptional //\\ OutputFormatConfigurationRequired

let SchemaConfigurationOptional =
  { catalog_id : Optional Text
  , region : Optional Text
  , version_id : Optional Text
  }

let SchemaConfigurationRequired =
  { database_name : Text
  , role_arn : Text
  , table_name : Text
  }
let SchemaConfiguration = SchemaConfigurationOptional //\\ SchemaConfigurationRequired

let DataFormatConversionConfigurationOptional =
  { enabled : Optional Bool }

let DataFormatConversionConfigurationRequired =
  { input_format_configuration : InputFormatConfiguration
  , output_format_configuration : OutputFormatConfiguration
  , schema_configuration : SchemaConfiguration
  }
let DataFormatConversionConfiguration = DataFormatConversionConfigurationOptional //\\ DataFormatConversionConfigurationRequired

let ParametersOptional = {}

let ParametersRequired =
  { parameter_name : Text
  , parameter_value : Text
  }
let Parameters = ParametersOptional //\\ ParametersRequired

let ProcessorsOptional =
  { parameters : Optional (List Parameters) }

let ProcessorsRequired =
  { type : Text }
let Processors = ProcessorsOptional //\\ ProcessorsRequired

let ProcessingConfigurationOptional =
  { enabled : Optional Bool
  , processors : Optional (List Processors)
  }

let ProcessingConfigurationRequired = {}
let ProcessingConfiguration = ProcessingConfigurationOptional //\\ ProcessingConfigurationRequired

let CloudwatchLoggingOptionsOptional =
  { enabled : Optional Bool
  , log_group_name : Optional Text
  , log_stream_name : Optional Text
  }

let CloudwatchLoggingOptionsRequired = {}
let CloudwatchLoggingOptions = CloudwatchLoggingOptionsOptional //\\ CloudwatchLoggingOptionsRequired

let S3BackupConfigurationOptional =
  { buffer_interval : Optional Natural
  , buffer_size : Optional Natural
  , compression_format : Optional Text
  , kms_key_arn : Optional Text
  , prefix : Optional Text
  , cloudwatch_logging_options : Optional CloudwatchLoggingOptions
  }

let S3BackupConfigurationRequired =
  { bucket_arn : Text
  , role_arn : Text
  }
let S3BackupConfiguration = S3BackupConfigurationOptional //\\ S3BackupConfigurationRequired

let ExtendedS3ConfigurationOptional =
  { buffer_interval : Optional Natural
  , buffer_size : Optional Natural
  , compression_format : Optional Text
  , error_output_prefix : Optional Text
  , kms_key_arn : Optional Text
  , prefix : Optional Text
  , s3_backup_mode : Optional Text
  , cloudwatch_logging_options : Optional CloudwatchLoggingOptions
  , data_format_conversion_configuration : Optional DataFormatConversionConfiguration
  , processing_configuration : Optional ProcessingConfiguration
  , s3_backup_configuration : Optional S3BackupConfiguration
  }

let ExtendedS3ConfigurationRequired =
  { bucket_arn : Text
  , role_arn : Text
  }
let ExtendedS3Configuration = ExtendedS3ConfigurationOptional //\\ ExtendedS3ConfigurationRequired

let KinesisSourceConfigurationOptional = {}

let KinesisSourceConfigurationRequired =
  { kinesis_stream_arn : Text
  , role_arn : Text
  }
let KinesisSourceConfiguration = KinesisSourceConfigurationOptional //\\ KinesisSourceConfigurationRequired

let CloudwatchLoggingOptionsOptional =
  { enabled : Optional Bool
  , log_group_name : Optional Text
  , log_stream_name : Optional Text
  }

let CloudwatchLoggingOptionsRequired = {}
let CloudwatchLoggingOptions = CloudwatchLoggingOptionsOptional //\\ CloudwatchLoggingOptionsRequired

let ParametersOptional = {}

let ParametersRequired =
  { parameter_name : Text
  , parameter_value : Text
  }
let Parameters = ParametersOptional //\\ ParametersRequired

let ProcessorsOptional =
  { parameters : Optional (List Parameters) }

let ProcessorsRequired =
  { type : Text }
let Processors = ProcessorsOptional //\\ ProcessorsRequired

let ProcessingConfigurationOptional =
  { enabled : Optional Bool
  , processors : Optional (List Processors)
  }

let ProcessingConfigurationRequired = {}
let ProcessingConfiguration = ProcessingConfigurationOptional //\\ ProcessingConfigurationRequired

let CloudwatchLoggingOptionsOptional =
  { enabled : Optional Bool
  , log_group_name : Optional Text
  , log_stream_name : Optional Text
  }

let CloudwatchLoggingOptionsRequired = {}
let CloudwatchLoggingOptions = CloudwatchLoggingOptionsOptional //\\ CloudwatchLoggingOptionsRequired

let S3BackupConfigurationOptional =
  { buffer_interval : Optional Natural
  , buffer_size : Optional Natural
  , compression_format : Optional Text
  , kms_key_arn : Optional Text
  , prefix : Optional Text
  , cloudwatch_logging_options : Optional CloudwatchLoggingOptions
  }

let S3BackupConfigurationRequired =
  { bucket_arn : Text
  , role_arn : Text
  }
let S3BackupConfiguration = S3BackupConfigurationOptional //\\ S3BackupConfigurationRequired

let RedshiftConfigurationOptional =
  { copy_options : Optional Text
  , data_table_columns : Optional Text
  , retry_duration : Optional Natural
  , s3_backup_mode : Optional Text
  , cloudwatch_logging_options : Optional CloudwatchLoggingOptions
  , processing_configuration : Optional ProcessingConfiguration
  , s3_backup_configuration : Optional S3BackupConfiguration
  }

let RedshiftConfigurationRequired =
  { cluster_jdbcurl : Text
  , data_table_name : Text
  , password : Text
  , role_arn : Text
  , username : Text
  }
let RedshiftConfiguration = RedshiftConfigurationOptional //\\ RedshiftConfigurationRequired

let CloudwatchLoggingOptionsOptional =
  { enabled : Optional Bool
  , log_group_name : Optional Text
  , log_stream_name : Optional Text
  }

let CloudwatchLoggingOptionsRequired = {}
let CloudwatchLoggingOptions = CloudwatchLoggingOptionsOptional //\\ CloudwatchLoggingOptionsRequired

let S3ConfigurationOptional =
  { buffer_interval : Optional Natural
  , buffer_size : Optional Natural
  , compression_format : Optional Text
  , kms_key_arn : Optional Text
  , prefix : Optional Text
  , cloudwatch_logging_options : Optional CloudwatchLoggingOptions
  }

let S3ConfigurationRequired =
  { bucket_arn : Text
  , role_arn : Text
  }
let S3Configuration = S3ConfigurationOptional //\\ S3ConfigurationRequired

let CloudwatchLoggingOptionsOptional =
  { enabled : Optional Bool
  , log_group_name : Optional Text
  , log_stream_name : Optional Text
  }

let CloudwatchLoggingOptionsRequired = {}
let CloudwatchLoggingOptions = CloudwatchLoggingOptionsOptional //\\ CloudwatchLoggingOptionsRequired

let ParametersOptional = {}

let ParametersRequired =
  { parameter_name : Text
  , parameter_value : Text
  }
let Parameters = ParametersOptional //\\ ParametersRequired

let ProcessorsOptional =
  { parameters : Optional (List Parameters) }

let ProcessorsRequired =
  { type : Text }
let Processors = ProcessorsOptional //\\ ProcessorsRequired

let ProcessingConfigurationOptional =
  { enabled : Optional Bool
  , processors : Optional (List Processors)
  }

let ProcessingConfigurationRequired = {}
let ProcessingConfiguration = ProcessingConfigurationOptional //\\ ProcessingConfigurationRequired

let SplunkConfigurationOptional =
  { hec_acknowledgment_timeout : Optional Natural
  , hec_endpoint_type : Optional Text
  , retry_duration : Optional Natural
  , s3_backup_mode : Optional Text
  , cloudwatch_logging_options : Optional CloudwatchLoggingOptions
  , processing_configuration : Optional ProcessingConfiguration
  }

let SplunkConfigurationRequired =
  { hec_endpoint : Text
  , hec_token : Text
  }
let SplunkConfiguration = SplunkConfigurationOptional //\\ SplunkConfigurationRequired

let AwsKinesisFirehoseDeliveryStreamOptional =
  { arn : Optional Text
  , destination_id : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , version_id : Optional Text
  , elasticsearch_configuration : Optional ElasticsearchConfiguration
  , extended_s3_configuration : Optional ExtendedS3Configuration
  , kinesis_source_configuration : Optional KinesisSourceConfiguration
  , redshift_configuration : Optional RedshiftConfiguration
  , s3_configuration : Optional S3Configuration
  , splunk_configuration : Optional SplunkConfiguration
  }

let AwsKinesisFirehoseDeliveryStreamRequired =
  { destination : Text
  , name : Text
  }
let AwsKinesisFirehoseDeliveryStream = AwsKinesisFirehoseDeliveryStreamOptional //\\ AwsKinesisFirehoseDeliveryStreamRequired

in
{ AwsKinesisFirehoseDeliveryStreamOptional = AwsKinesisFirehoseDeliveryStreamOptional
, AwsKinesisFirehoseDeliveryStreamRequired = AwsKinesisFirehoseDeliveryStreamRequired
, AwsKinesisFirehoseDeliveryStream = AwsKinesisFirehoseDeliveryStream
, SplunkConfigurationOptional = SplunkConfigurationOptional
, SplunkConfigurationRequired = SplunkConfigurationRequired
, SplunkConfiguration = SplunkConfiguration
, ProcessingConfigurationOptional = ProcessingConfigurationOptional
, ProcessingConfigurationRequired = ProcessingConfigurationRequired
, ProcessingConfiguration = ProcessingConfiguration
, ProcessorsOptional = ProcessorsOptional
, ProcessorsRequired = ProcessorsRequired
, Processors = Processors
, Parameters = Parameters
, CloudwatchLoggingOptionsOptional = CloudwatchLoggingOptionsOptional
, CloudwatchLoggingOptionsRequired = CloudwatchLoggingOptionsRequired
, CloudwatchLoggingOptions = CloudwatchLoggingOptions
, S3ConfigurationOptional = S3ConfigurationOptional
, S3ConfigurationRequired = S3ConfigurationRequired
, S3Configuration = S3Configuration
, CloudwatchLoggingOptionsOptional = CloudwatchLoggingOptionsOptional
, CloudwatchLoggingOptionsRequired = CloudwatchLoggingOptionsRequired
, CloudwatchLoggingOptions = CloudwatchLoggingOptions
, RedshiftConfigurationOptional = RedshiftConfigurationOptional
, RedshiftConfigurationRequired = RedshiftConfigurationRequired
, RedshiftConfiguration = RedshiftConfiguration
, S3BackupConfigurationOptional = S3BackupConfigurationOptional
, S3BackupConfigurationRequired = S3BackupConfigurationRequired
, S3BackupConfiguration = S3BackupConfiguration
, CloudwatchLoggingOptionsOptional = CloudwatchLoggingOptionsOptional
, CloudwatchLoggingOptionsRequired = CloudwatchLoggingOptionsRequired
, CloudwatchLoggingOptions = CloudwatchLoggingOptions
, ProcessingConfigurationOptional = ProcessingConfigurationOptional
, ProcessingConfigurationRequired = ProcessingConfigurationRequired
, ProcessingConfiguration = ProcessingConfiguration
, ProcessorsOptional = ProcessorsOptional
, ProcessorsRequired = ProcessorsRequired
, Processors = Processors
, Parameters = Parameters
, CloudwatchLoggingOptionsOptional = CloudwatchLoggingOptionsOptional
, CloudwatchLoggingOptionsRequired = CloudwatchLoggingOptionsRequired
, CloudwatchLoggingOptions = CloudwatchLoggingOptions
, KinesisSourceConfiguration = KinesisSourceConfiguration
, ExtendedS3ConfigurationOptional = ExtendedS3ConfigurationOptional
, ExtendedS3ConfigurationRequired = ExtendedS3ConfigurationRequired
, ExtendedS3Configuration = ExtendedS3Configuration
, S3BackupConfigurationOptional = S3BackupConfigurationOptional
, S3BackupConfigurationRequired = S3BackupConfigurationRequired
, S3BackupConfiguration = S3BackupConfiguration
, CloudwatchLoggingOptionsOptional = CloudwatchLoggingOptionsOptional
, CloudwatchLoggingOptionsRequired = CloudwatchLoggingOptionsRequired
, CloudwatchLoggingOptions = CloudwatchLoggingOptions
, ProcessingConfigurationOptional = ProcessingConfigurationOptional
, ProcessingConfigurationRequired = ProcessingConfigurationRequired
, ProcessingConfiguration = ProcessingConfiguration
, ProcessorsOptional = ProcessorsOptional
, ProcessorsRequired = ProcessorsRequired
, Processors = Processors
, Parameters = Parameters
, DataFormatConversionConfigurationOptional = DataFormatConversionConfigurationOptional
, DataFormatConversionConfigurationRequired = DataFormatConversionConfigurationRequired
, DataFormatConversionConfiguration = DataFormatConversionConfiguration
, SchemaConfigurationOptional = SchemaConfigurationOptional
, SchemaConfigurationRequired = SchemaConfigurationRequired
, SchemaConfiguration = SchemaConfiguration
, OutputFormatConfiguration = OutputFormatConfiguration
, SerializerOptional = SerializerOptional
, SerializerRequired = SerializerRequired
, Serializer = Serializer
, ParquetSerDeOptional = ParquetSerDeOptional
, ParquetSerDeRequired = ParquetSerDeRequired
, ParquetSerDe = ParquetSerDe
, OrcSerDeOptional = OrcSerDeOptional
, OrcSerDeRequired = OrcSerDeRequired
, OrcSerDe = OrcSerDe
, InputFormatConfiguration = InputFormatConfiguration
, DeserializerOptional = DeserializerOptional
, DeserializerRequired = DeserializerRequired
, Deserializer = Deserializer
, OpenXJsonSerDeOptional = OpenXJsonSerDeOptional
, OpenXJsonSerDeRequired = OpenXJsonSerDeRequired
, OpenXJsonSerDe = OpenXJsonSerDe
, HiveJsonSerDeOptional = HiveJsonSerDeOptional
, HiveJsonSerDeRequired = HiveJsonSerDeRequired
, HiveJsonSerDe = HiveJsonSerDe
, CloudwatchLoggingOptionsOptional = CloudwatchLoggingOptionsOptional
, CloudwatchLoggingOptionsRequired = CloudwatchLoggingOptionsRequired
, CloudwatchLoggingOptions = CloudwatchLoggingOptions
, ElasticsearchConfigurationOptional = ElasticsearchConfigurationOptional
, ElasticsearchConfigurationRequired = ElasticsearchConfigurationRequired
, ElasticsearchConfiguration = ElasticsearchConfiguration
, ProcessingConfigurationOptional = ProcessingConfigurationOptional
, ProcessingConfigurationRequired = ProcessingConfigurationRequired
, ProcessingConfiguration = ProcessingConfiguration
, ProcessorsOptional = ProcessorsOptional
, ProcessorsRequired = ProcessorsRequired
, Processors = Processors
, Parameters = Parameters
, CloudwatchLoggingOptionsOptional = CloudwatchLoggingOptionsOptional
, CloudwatchLoggingOptionsRequired = CloudwatchLoggingOptionsRequired
, CloudwatchLoggingOptions = CloudwatchLoggingOptions
}
