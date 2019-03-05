
let AwsDevicefarmProjectOptional =
  { arn: Optional Text }

let AwsDevicefarmProjectRequired =
  { name: Text }
let AwsDevicefarmProject = AwsDevicefarmProjectOptional //\\ AwsDevicefarmProjectRequired

in
{ AwsDevicefarmProjectOptional = AwsDevicefarmProjectOptional
, AwsDevicefarmProjectRequired = AwsDevicefarmProjectRequired
, AwsDevicefarmProject = AwsDevicefarmProject
}
