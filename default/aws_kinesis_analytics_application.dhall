
let cloudwatchLoggingOptions = {}

let kinesisFirehose = {}

let kinesisStream = {}

let parallelism = {}

let lambda = {}

let processingConfiguration = {}

let recordColumns =
  { mapping = None Text }

let csv = {}

let json = {}

let mappingParameters =
  { csv = None (../dhall/aws_kinesis_analytics_application.dhall).Csv
  , json = None (../dhall/aws_kinesis_analytics_application.dhall).Json
  }

let recordFormat =
  { mapping_parameters = None (../dhall/aws_kinesis_analytics_application.dhall).MappingParameters }

let schema =
  { record_encoding = None Text }

let startingPositionConfiguration = {}

let inputs =
  { kinesis_firehose = None (../dhall/aws_kinesis_analytics_application.dhall).KinesisFirehose
  , kinesis_stream = None (../dhall/aws_kinesis_analytics_application.dhall).KinesisStream
  , parallelism = None (../dhall/aws_kinesis_analytics_application.dhall).Parallelism
  , processing_configuration = None (../dhall/aws_kinesis_analytics_application.dhall).ProcessingConfiguration
  , starting_position_configuration = None (List (../dhall/aws_kinesis_analytics_application.dhall).StartingPositionConfiguration)
  }

let kinesisFirehose = {}

let kinesisStream = {}

let lambda = {}

let schema =
  { record_format_type = None Text }

let outputs =
  { kinesis_firehose = None (../dhall/aws_kinesis_analytics_application.dhall).KinesisFirehose
  , kinesis_stream = None (../dhall/aws_kinesis_analytics_application.dhall).KinesisStream
  , lambda = None (../dhall/aws_kinesis_analytics_application.dhall).Lambda
  }

let s3 = {}

let recordColumns =
  { mapping = None Text }

let csv = {}

let json = {}

let mappingParameters =
  { csv = None (../dhall/aws_kinesis_analytics_application.dhall).Csv
  , json = None (../dhall/aws_kinesis_analytics_application.dhall).Json
  }

let recordFormat =
  { mapping_parameters = None (../dhall/aws_kinesis_analytics_application.dhall).MappingParameters }

let schema =
  { record_encoding = None Text }

let referenceDataSources = {}

let awsKinesisAnalyticsApplication =
  { code = None Text
  , description = None Text
  , cloudwatch_logging_options = None (../dhall/aws_kinesis_analytics_application.dhall).CloudwatchLoggingOptions
  , inputs = None (../dhall/aws_kinesis_analytics_application.dhall).Inputs
  , outputs = None (List (../dhall/aws_kinesis_analytics_application.dhall).Outputs)
  , reference_data_sources = None (../dhall/aws_kinesis_analytics_application.dhall).ReferenceDataSources
  }

in
{ awsKinesisAnalyticsApplication = awsKinesisAnalyticsApplication
, schema = schema
, recordFormat = recordFormat
, mappingParameters = mappingParameters
, recordColumns = recordColumns
, outputs = outputs
, schema = schema
, inputs = inputs
, schema = schema
, recordFormat = recordFormat
, mappingParameters = mappingParameters
, recordColumns = recordColumns
}
