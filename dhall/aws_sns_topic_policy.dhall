
let AwsSnsTopicPolicyOptional = {}

let AwsSnsTopicPolicyRequired =
  { arn: Text
  , policy: Text
  }
let AwsSnsTopicPolicy = AwsSnsTopicPolicyOptional //\\ AwsSnsTopicPolicyRequired

in
{ AwsSnsTopicPolicy = AwsSnsTopicPolicy
}
