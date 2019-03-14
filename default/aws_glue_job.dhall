
let command =
  { name = None Text }

let executionProperty =
  { max_concurrent_runs = None Natural }

let awsGlueJob =
  { allocated_capacity = None Natural
  , connections = None (List Text)
  , default_arguments = None (List { mapKey : Text, mapValue : Text })
  , description = None Text
  , max_retries = None Natural
  , security_configuration = None Text
  , timeout = None Natural
  , execution_property = None (../dhall/aws_glue_job.dhall).ExecutionProperty
  }

in
{ awsGlueJob = awsGlueJob
, executionProperty = executionProperty
, command = command
}
