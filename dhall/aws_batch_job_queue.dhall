
let AwsBatchJobQueueOptional =
  { arn: Optional Text }

let AwsBatchJobQueueRequired =
  { compute_environments: (List Text)
  , name: Text
  , priority: Natural
  , state: Text
  }
let AwsBatchJobQueue = AwsBatchJobQueueOptional //\\ AwsBatchJobQueueRequired

in
{ AwsBatchJobQueueOptional = AwsBatchJobQueueOptional
, AwsBatchJobQueueRequired = AwsBatchJobQueueRequired
, AwsBatchJobQueue = AwsBatchJobQueue
}
