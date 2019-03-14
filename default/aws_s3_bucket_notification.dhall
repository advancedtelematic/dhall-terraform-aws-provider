
let lambdaFunction =
  { filter_prefix = None Text
  , filter_suffix = None Text
  , id = None Text
  , lambda_function_arn = None Text
  }

let queue =
  { filter_prefix = None Text
  , filter_suffix = None Text
  , id = None Text
  }

let topic =
  { filter_prefix = None Text
  , filter_suffix = None Text
  , id = None Text
  }

let awsS3BucketNotification =
  { lambda_function = None (List (../dhall/aws_s3_bucket_notification.dhall).LambdaFunction)
  , queue = None (List (../dhall/aws_s3_bucket_notification.dhall).Queue)
  , topic = None (List (../dhall/aws_s3_bucket_notification.dhall).Topic)
  }

in
{ awsS3BucketNotification = awsS3BucketNotification
, topic = topic
, queue = queue
, lambdaFunction = lambdaFunction
}
