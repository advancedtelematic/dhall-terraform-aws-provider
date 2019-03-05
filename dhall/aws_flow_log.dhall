
let AwsFlowLogOptional =
  { eni_id: Optional Text
  , iam_role_arn: Optional Text
  , log_destination: Optional Text
  , log_destination_type: Optional Text
  , log_group_name: Optional Text
  , subnet_id: Optional Text
  , vpc_id: Optional Text
  }

let AwsFlowLogRequired =
  { traffic_type: Text }
let AwsFlowLog = AwsFlowLogOptional //\\ AwsFlowLogRequired

in
{ AwsFlowLogOptional = AwsFlowLogOptional
, AwsFlowLogRequired = AwsFlowLogRequired
, AwsFlowLog = AwsFlowLog
}
