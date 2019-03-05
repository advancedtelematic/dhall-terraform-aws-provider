
let AwsInspectorResourceGroupOptional =
  { arn: Optional Text }

let AwsInspectorResourceGroupRequired =
  { tags: (List { mapKey : Text, mapValue : Text }) }
let AwsInspectorResourceGroup = AwsInspectorResourceGroupOptional //\\ AwsInspectorResourceGroupRequired

in
{ AwsInspectorResourceGroupOptional = AwsInspectorResourceGroupOptional
, AwsInspectorResourceGroupRequired = AwsInspectorResourceGroupRequired
, AwsInspectorResourceGroup = AwsInspectorResourceGroup
}
