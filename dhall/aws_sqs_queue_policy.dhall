
let AwsSqsQueuePolicyOptional = {}

let AwsSqsQueuePolicyRequired =
  { policy : Text
  , queue_url : Text
  }
let AwsSqsQueuePolicy = AwsSqsQueuePolicyOptional //\\ AwsSqsQueuePolicyRequired

in
{ AwsSqsQueuePolicy = AwsSqsQueuePolicy
}
