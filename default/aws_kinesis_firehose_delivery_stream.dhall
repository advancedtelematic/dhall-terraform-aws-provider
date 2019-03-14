
let cloudwatchLoggingOptions =
  { enabled = None Bool
  , log_group_name = None Text
  , log_stream_name = None Text
  }

let parameters = {}

let processors =
  { parameters = None (List (../dhall/aws_kinesis_firehose_delivery_stream.dhall).Parameters) }

let processingConfiguration =
  { enabled = None Bool
  , processors = None (List (../dhall/aws_kinesis_firehose_delivery_stream.dhall).Processors)
  }

let elasticsearchConfiguration =
  { buffering_interval = None Natural
  , buffering_size = None Natural
  , index_rotation_period = None Text
  , retry_duration = None Natural
  , s3_backup_mode = None Text
  , type_name = None Text
  , cloudwatch_logging_options = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).CloudwatchLoggingOptions
  , processing_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).ProcessingConfiguration
  }

let cloudwatchLoggingOptions =
  { enabled = None Bool
  , log_group_name = None Text
  , log_stream_name = None Text
  }

let hiveJsonSerDe =
  { timestamp_formats = None (List Text) }

let openXJsonSerDe =
  { case_insensitive = None Bool
  , column_to_json_key_mappings = None (List { mapKey : Text, mapValue : Text })
  , convert_dots_in_json_keys_to_underscores = None Bool
  }

let deserializer =
  { hive_json_ser_de = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).HiveJsonSerDe
  , open_x_json_ser_de = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).OpenXJsonSerDe
  }

let inputFormatConfiguration = {}

let orcSerDe =
  { block_size_bytes = None Natural
  , bloom_filter_columns = None (List Text)
  , bloom_filter_false_positive_probability = None Natural
  , compression = None Text
  , dictionary_key_threshold = None Natural
  , enable_padding = None Bool
  , format_version = None Text
  , padding_tolerance = None Natural
  , row_index_stride = None Natural
  , stripe_size_bytes = None Natural
  }

let parquetSerDe =
  { block_size_bytes = None Natural
  , compression = None Text
  , enable_dictionary_compression = None Bool
  , max_padding_bytes = None Natural
  , page_size_bytes = None Natural
  , writer_version = None Text
  }

let serializer =
  { orc_ser_de = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).OrcSerDe
  , parquet_ser_de = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).ParquetSerDe
  }

let outputFormatConfiguration = {}

let schemaConfiguration =
  { catalog_id = None Text
  , region = None Text
  , version_id = None Text
  }

let dataFormatConversionConfiguration =
  { enabled = None Bool }

let parameters = {}

let processors =
  { parameters = None (List (../dhall/aws_kinesis_firehose_delivery_stream.dhall).Parameters) }

let processingConfiguration =
  { enabled = None Bool
  , processors = None (List (../dhall/aws_kinesis_firehose_delivery_stream.dhall).Processors)
  }

let cloudwatchLoggingOptions =
  { enabled = None Bool
  , log_group_name = None Text
  , log_stream_name = None Text
  }

let s3BackupConfiguration =
  { buffer_interval = None Natural
  , buffer_size = None Natural
  , compression_format = None Text
  , kms_key_arn = None Text
  , prefix = None Text
  , cloudwatch_logging_options = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).CloudwatchLoggingOptions
  }

let extendedS3Configuration =
  { buffer_interval = None Natural
  , buffer_size = None Natural
  , compression_format = None Text
  , error_output_prefix = None Text
  , kms_key_arn = None Text
  , prefix = None Text
  , s3_backup_mode = None Text
  , cloudwatch_logging_options = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).CloudwatchLoggingOptions
  , data_format_conversion_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).DataFormatConversionConfiguration
  , processing_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).ProcessingConfiguration
  , s3_backup_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).S3BackupConfiguration
  }

let kinesisSourceConfiguration = {}

let cloudwatchLoggingOptions =
  { enabled = None Bool
  , log_group_name = None Text
  , log_stream_name = None Text
  }

let parameters = {}

let processors =
  { parameters = None (List (../dhall/aws_kinesis_firehose_delivery_stream.dhall).Parameters) }

let processingConfiguration =
  { enabled = None Bool
  , processors = None (List (../dhall/aws_kinesis_firehose_delivery_stream.dhall).Processors)
  }

let cloudwatchLoggingOptions =
  { enabled = None Bool
  , log_group_name = None Text
  , log_stream_name = None Text
  }

let s3BackupConfiguration =
  { buffer_interval = None Natural
  , buffer_size = None Natural
  , compression_format = None Text
  , kms_key_arn = None Text
  , prefix = None Text
  , cloudwatch_logging_options = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).CloudwatchLoggingOptions
  }

let redshiftConfiguration =
  { copy_options = None Text
  , data_table_columns = None Text
  , retry_duration = None Natural
  , s3_backup_mode = None Text
  , cloudwatch_logging_options = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).CloudwatchLoggingOptions
  , processing_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).ProcessingConfiguration
  , s3_backup_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).S3BackupConfiguration
  }

let cloudwatchLoggingOptions =
  { enabled = None Bool
  , log_group_name = None Text
  , log_stream_name = None Text
  }

let s3Configuration =
  { buffer_interval = None Natural
  , buffer_size = None Natural
  , compression_format = None Text
  , kms_key_arn = None Text
  , prefix = None Text
  , cloudwatch_logging_options = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).CloudwatchLoggingOptions
  }

let cloudwatchLoggingOptions =
  { enabled = None Bool
  , log_group_name = None Text
  , log_stream_name = None Text
  }

let parameters = {}

let processors =
  { parameters = None (List (../dhall/aws_kinesis_firehose_delivery_stream.dhall).Parameters) }

let processingConfiguration =
  { enabled = None Bool
  , processors = None (List (../dhall/aws_kinesis_firehose_delivery_stream.dhall).Processors)
  }

let splunkConfiguration =
  { hec_acknowledgment_timeout = None Natural
  , hec_endpoint_type = None Text
  , retry_duration = None Natural
  , s3_backup_mode = None Text
  , cloudwatch_logging_options = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).CloudwatchLoggingOptions
  , processing_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).ProcessingConfiguration
  }

let awsKinesisFirehoseDeliveryStream =
  { arn = None Text
  , destination_id = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , version_id = None Text
  , elasticsearch_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).ElasticsearchConfiguration
  , extended_s3_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).ExtendedS3Configuration
  , kinesis_source_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).KinesisSourceConfiguration
  , redshift_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).RedshiftConfiguration
  , s3_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).S3Configuration
  , splunk_configuration = None (../dhall/aws_kinesis_firehose_delivery_stream.dhall).SplunkConfiguration
  }

in
{ awsKinesisFirehoseDeliveryStream = awsKinesisFirehoseDeliveryStream
, splunkConfiguration = splunkConfiguration
, processingConfiguration = processingConfiguration
, processors = processors
, cloudwatchLoggingOptions = cloudwatchLoggingOptions
, s3Configuration = s3Configuration
, cloudwatchLoggingOptions = cloudwatchLoggingOptions
, redshiftConfiguration = redshiftConfiguration
, s3BackupConfiguration = s3BackupConfiguration
, cloudwatchLoggingOptions = cloudwatchLoggingOptions
, processingConfiguration = processingConfiguration
, processors = processors
, cloudwatchLoggingOptions = cloudwatchLoggingOptions
, extendedS3Configuration = extendedS3Configuration
, s3BackupConfiguration = s3BackupConfiguration
, cloudwatchLoggingOptions = cloudwatchLoggingOptions
, processingConfiguration = processingConfiguration
, processors = processors
, dataFormatConversionConfiguration = dataFormatConversionConfiguration
, schemaConfiguration = schemaConfiguration
, serializer = serializer
, parquetSerDe = parquetSerDe
, orcSerDe = orcSerDe
, deserializer = deserializer
, openXJsonSerDe = openXJsonSerDe
, hiveJsonSerDe = hiveJsonSerDe
, cloudwatchLoggingOptions = cloudwatchLoggingOptions
, elasticsearchConfiguration = elasticsearchConfiguration
, processingConfiguration = processingConfiguration
, processors = processors
, cloudwatchLoggingOptions = cloudwatchLoggingOptions
}
