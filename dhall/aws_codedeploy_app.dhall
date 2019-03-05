
let AwsCodedeployAppOptional =
  { compute_platform: Optional Text
  , unique_id: Optional Text
  }

let AwsCodedeployAppRequired =
  { name: Text }
let AwsCodedeployApp = AwsCodedeployAppOptional //\\ AwsCodedeployAppRequired

in
{ AwsCodedeployAppOptional = AwsCodedeployAppOptional
, AwsCodedeployAppRequired = AwsCodedeployAppRequired
, AwsCodedeployApp = AwsCodedeployApp
}
