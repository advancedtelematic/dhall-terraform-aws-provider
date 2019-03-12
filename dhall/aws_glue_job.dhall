
let CommandOptional =
  { name : Optional Text }

let CommandRequired =
  { script_location : Text }
let Command = CommandOptional //\\ CommandRequired

let ExecutionPropertyOptional =
  { max_concurrent_runs : Optional Natural }

let ExecutionPropertyRequired = {}
let ExecutionProperty = ExecutionPropertyOptional //\\ ExecutionPropertyRequired

let AwsGlueJobOptional =
  { allocated_capacity : Optional Natural
  , connections : Optional (List Text)
  , default_arguments : Optional (List { mapKey : Text, mapValue : Text })
  , description : Optional Text
  , max_retries : Optional Natural
  , security_configuration : Optional Text
  , timeout : Optional Natural
  , execution_property : Optional ExecutionProperty
  }

let AwsGlueJobRequired =
  { name : Text
  , role_arn : Text
  , command : Command
  }
let AwsGlueJob = AwsGlueJobOptional //\\ AwsGlueJobRequired

in
{ AwsGlueJobOptional = AwsGlueJobOptional
, AwsGlueJobRequired = AwsGlueJobRequired
, AwsGlueJob = AwsGlueJob
, ExecutionPropertyOptional = ExecutionPropertyOptional
, ExecutionPropertyRequired = ExecutionPropertyRequired
, ExecutionProperty = ExecutionProperty
, CommandOptional = CommandOptional
, CommandRequired = CommandRequired
, Command = Command
}
