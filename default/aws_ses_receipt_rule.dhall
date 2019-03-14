
let addHeaderAction = {}

let bounceAction =
  { status_code = None Text
  , topic_arn = None Text
  }

let lambdaAction =
  { invocation_type = None Text
  , topic_arn = None Text
  }

let s3Action =
  { kms_key_arn = None Text
  , object_key_prefix = None Text
  , topic_arn = None Text
  }

let snsAction = {}

let stopAction =
  { topic_arn = None Text }

let workmailAction =
  { topic_arn = None Text }

let awsSesReceiptRule =
  { after = None Text
  , enabled = None Bool
  , recipients = None (List Text)
  , scan_enabled = None Bool
  , tls_policy = None Text
  , add_header_action = None (List (../dhall/aws_ses_receipt_rule.dhall).AddHeaderAction)
  , bounce_action = None (List (../dhall/aws_ses_receipt_rule.dhall).BounceAction)
  , lambda_action = None (List (../dhall/aws_ses_receipt_rule.dhall).LambdaAction)
  , s3_action = None (List (../dhall/aws_ses_receipt_rule.dhall).S3Action)
  , sns_action = None (List (../dhall/aws_ses_receipt_rule.dhall).SnsAction)
  , stop_action = None (List (../dhall/aws_ses_receipt_rule.dhall).StopAction)
  , workmail_action = None (List (../dhall/aws_ses_receipt_rule.dhall).WorkmailAction)
  }

in
{ awsSesReceiptRule = awsSesReceiptRule
, workmailAction = workmailAction
, stopAction = stopAction
, s3Action = s3Action
, lambdaAction = lambdaAction
, bounceAction = bounceAction
}
