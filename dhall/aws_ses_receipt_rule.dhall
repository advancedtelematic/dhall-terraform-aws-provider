
let AddHeaderActionOptional = {}

let AddHeaderActionRequired =
  { header_name : Text
  , header_value : Text
  , position : Natural
  }
let AddHeaderAction = AddHeaderActionOptional //\\ AddHeaderActionRequired

let BounceActionOptional =
  { status_code : Optional Text
  , topic_arn : Optional Text
  }

let BounceActionRequired =
  { message : Text
  , position : Natural
  , sender : Text
  , smtp_reply_code : Text
  }
let BounceAction = BounceActionOptional //\\ BounceActionRequired

let LambdaActionOptional =
  { invocation_type : Optional Text
  , topic_arn : Optional Text
  }

let LambdaActionRequired =
  { function_arn : Text
  , position : Natural
  }
let LambdaAction = LambdaActionOptional //\\ LambdaActionRequired

let S3ActionOptional =
  { kms_key_arn : Optional Text
  , object_key_prefix : Optional Text
  , topic_arn : Optional Text
  }

let S3ActionRequired =
  { bucket_name : Text
  , position : Natural
  }
let S3Action = S3ActionOptional //\\ S3ActionRequired

let SnsActionOptional = {}

let SnsActionRequired =
  { position : Natural
  , topic_arn : Text
  }
let SnsAction = SnsActionOptional //\\ SnsActionRequired

let StopActionOptional =
  { topic_arn : Optional Text }

let StopActionRequired =
  { position : Natural
  , scope : Text
  }
let StopAction = StopActionOptional //\\ StopActionRequired

let WorkmailActionOptional =
  { topic_arn : Optional Text }

let WorkmailActionRequired =
  { organization_arn : Text
  , position : Natural
  }
let WorkmailAction = WorkmailActionOptional //\\ WorkmailActionRequired

let AwsSesReceiptRuleOptional =
  { after : Optional Text
  , enabled : Optional Bool
  , recipients : Optional (List Text)
  , scan_enabled : Optional Bool
  , tls_policy : Optional Text
  , add_header_action : Optional (List AddHeaderAction)
  , bounce_action : Optional (List BounceAction)
  , lambda_action : Optional (List LambdaAction)
  , s3_action : Optional (List S3Action)
  , sns_action : Optional (List SnsAction)
  , stop_action : Optional (List StopAction)
  , workmail_action : Optional (List WorkmailAction)
  }

let AwsSesReceiptRuleRequired =
  { name : Text
  , rule_set_name : Text
  }
let AwsSesReceiptRule = AwsSesReceiptRuleOptional //\\ AwsSesReceiptRuleRequired

in
{ AwsSesReceiptRuleOptional = AwsSesReceiptRuleOptional
, AwsSesReceiptRuleRequired = AwsSesReceiptRuleRequired
, AwsSesReceiptRule = AwsSesReceiptRule
, WorkmailActionOptional = WorkmailActionOptional
, WorkmailActionRequired = WorkmailActionRequired
, WorkmailAction = WorkmailAction
, StopActionOptional = StopActionOptional
, StopActionRequired = StopActionRequired
, StopAction = StopAction
, SnsAction = SnsAction
, S3ActionOptional = S3ActionOptional
, S3ActionRequired = S3ActionRequired
, S3Action = S3Action
, LambdaActionOptional = LambdaActionOptional
, LambdaActionRequired = LambdaActionRequired
, LambdaAction = LambdaAction
, BounceActionOptional = BounceActionOptional
, BounceActionRequired = BounceActionRequired
, BounceAction = BounceAction
, AddHeaderAction = AddHeaderAction
}
