
let AwsStoragegatewayUploadBufferOptional = {}

let AwsStoragegatewayUploadBufferRequired =
  { disk_id: Text
  , gateway_arn: Text
  }
let AwsStoragegatewayUploadBuffer = AwsStoragegatewayUploadBufferOptional //\\ AwsStoragegatewayUploadBufferRequired

in
{ AwsStoragegatewayUploadBuffer = AwsStoragegatewayUploadBuffer
}
