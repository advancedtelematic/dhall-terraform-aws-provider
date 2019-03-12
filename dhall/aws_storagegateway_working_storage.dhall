
let AwsStoragegatewayWorkingStorageOptional = {}

let AwsStoragegatewayWorkingStorageRequired =
  { disk_id : Text
  , gateway_arn : Text
  }
let AwsStoragegatewayWorkingStorage = AwsStoragegatewayWorkingStorageOptional //\\ AwsStoragegatewayWorkingStorageRequired

in
{ AwsStoragegatewayWorkingStorage = AwsStoragegatewayWorkingStorage
}
