
let retryStrategy =
  { attempts = None Natural }

let timeout =
  { attempt_duration_seconds = None Natural }

let awsBatchJobDefinition =
  { container_properties = None Text
  , parameters = None (List { mapKey : Text, mapValue : Text })
  , retry_strategy = None (../dhall/aws_batch_job_definition.dhall).RetryStrategy
  , timeout = None (../dhall/aws_batch_job_definition.dhall).Timeout
  }

in
{ awsBatchJobDefinition = awsBatchJobDefinition
, timeout = timeout
, retryStrategy = retryStrategy
}
