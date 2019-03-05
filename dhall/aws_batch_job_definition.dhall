
let RetryStrategyOptional =
  { attempts: Optional Natural }

let RetryStrategyRequired = {}
let RetryStrategy = RetryStrategyOptional //\\ RetryStrategyRequired

let TimeoutOptional =
  { attempt_duration_seconds: Optional Natural }

let TimeoutRequired = {}
let Timeout = TimeoutOptional //\\ TimeoutRequired

let AwsBatchJobDefinitionOptional =
  { arn: Optional Text
  , container_properties: Optional Text
  , parameters: Optional (List { mapKey : Text, mapValue : Text })
  , revision: Optional Natural
  , retry_strategy: Optional RetryStrategy
  , timeout: Optional Timeout
  }

let AwsBatchJobDefinitionRequired =
  { name: Text
  , type: Text
  }
let AwsBatchJobDefinition = AwsBatchJobDefinitionOptional //\\ AwsBatchJobDefinitionRequired

in
{ AwsBatchJobDefinitionOptional = AwsBatchJobDefinitionOptional
, AwsBatchJobDefinitionRequired = AwsBatchJobDefinitionRequired
, AwsBatchJobDefinition = AwsBatchJobDefinition
, TimeoutOptional = TimeoutOptional
, TimeoutRequired = TimeoutRequired
, Timeout = Timeout
, RetryStrategyOptional = RetryStrategyOptional
, RetryStrategyRequired = RetryStrategyRequired
, RetryStrategy = RetryStrategy
}
