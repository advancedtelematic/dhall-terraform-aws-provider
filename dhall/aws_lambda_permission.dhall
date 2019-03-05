
let AwsLambdaPermissionOptional =
  { event_source_token: Optional Text
  , qualifier: Optional Text
  , source_account: Optional Text
  , source_arn: Optional Text
  , statement_id: Optional Text
  , statement_id_prefix: Optional Text
  }

let AwsLambdaPermissionRequired =
  { action: Text
  , function_name: Text
  , principal: Text
  }
let AwsLambdaPermission = AwsLambdaPermissionOptional //\\ AwsLambdaPermissionRequired

in
{ AwsLambdaPermissionOptional = AwsLambdaPermissionOptional
, AwsLambdaPermissionRequired = AwsLambdaPermissionRequired
, AwsLambdaPermission = AwsLambdaPermission
}
