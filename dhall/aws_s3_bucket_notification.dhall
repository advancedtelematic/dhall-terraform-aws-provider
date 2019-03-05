
let LambdaFunctionOptional =
  { filter_prefix: Optional Text
  , filter_suffix: Optional Text
  , id: Optional Text
  , lambda_function_arn: Optional Text
  }

let LambdaFunctionRequired =
  { events: (List Text) }
let LambdaFunction = LambdaFunctionOptional //\\ LambdaFunctionRequired

let QueueOptional =
  { filter_prefix: Optional Text
  , filter_suffix: Optional Text
  , id: Optional Text
  }

let QueueRequired =
  { events: (List Text)
  , queue_arn: Text
  }
let Queue = QueueOptional //\\ QueueRequired

let TopicOptional =
  { filter_prefix: Optional Text
  , filter_suffix: Optional Text
  , id: Optional Text
  }

let TopicRequired =
  { events: (List Text)
  , topic_arn: Text
  }
let Topic = TopicOptional //\\ TopicRequired

let AwsS3BucketNotificationOptional =
  { lambda_function: Optional (List LambdaFunction)
  , queue: Optional (List Queue)
  , topic: Optional (List Topic)
  }

let AwsS3BucketNotificationRequired =
  { bucket: Text }
let AwsS3BucketNotification = AwsS3BucketNotificationOptional //\\ AwsS3BucketNotificationRequired

in
{ AwsS3BucketNotificationOptional = AwsS3BucketNotificationOptional
, AwsS3BucketNotificationRequired = AwsS3BucketNotificationRequired
, AwsS3BucketNotification = AwsS3BucketNotification
, TopicOptional = TopicOptional
, TopicRequired = TopicRequired
, Topic = Topic
, QueueOptional = QueueOptional
, QueueRequired = QueueRequired
, Queue = Queue
, LambdaFunctionOptional = LambdaFunctionOptional
, LambdaFunctionRequired = LambdaFunctionRequired
, LambdaFunction = LambdaFunction
}
