
let AwsBatchJobQueueOptional = {}

let AwsBatchJobQueueRequired =
  { compute_environments: (List Text)
  , name: Text
  , priority: Natural
  , state: Text
  }
let AwsBatchJobQueue = AwsBatchJobQueueOptional //\\ AwsBatchJobQueueRequired

in
{ AwsBatchJobQueue = AwsBatchJobQueue
}
