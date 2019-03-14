
let awsLambdaPermission =
  { event_source_token = None Text
  , qualifier = None Text
  , source_account = None Text
  , source_arn = None Text
  , statement_id = None Text
  , statement_id_prefix = None Text
  }

in
{ awsLambdaPermission = awsLambdaPermission
}
