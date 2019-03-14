
let awsFlowLog =
  { eni_id = None Text
  , iam_role_arn = None Text
  , log_destination = None Text
  , log_destination_type = None Text
  , log_group_name = None Text
  , subnet_id = None Text
  , vpc_id = None Text
  }

in
{ awsFlowLog = awsFlowLog
}
