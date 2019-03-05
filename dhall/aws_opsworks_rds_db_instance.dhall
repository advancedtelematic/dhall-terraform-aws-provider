
let AwsOpsworksRdsDbInstanceOptional = {}

let AwsOpsworksRdsDbInstanceRequired =
  { db_password: Text
  , db_user: Text
  , rds_db_instance_arn: Text
  , stack_id: Text
  }
let AwsOpsworksRdsDbInstance = AwsOpsworksRdsDbInstanceOptional //\\ AwsOpsworksRdsDbInstanceRequired

in
{ AwsOpsworksRdsDbInstance = AwsOpsworksRdsDbInstance
}
