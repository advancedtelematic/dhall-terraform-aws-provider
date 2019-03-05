
let AwsEcsClusterOptional =
  { arn: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsEcsClusterRequired =
  { name: Text }
let AwsEcsCluster = AwsEcsClusterOptional //\\ AwsEcsClusterRequired

in
{ AwsEcsClusterOptional = AwsEcsClusterOptional
, AwsEcsClusterRequired = AwsEcsClusterRequired
, AwsEcsCluster = AwsEcsCluster
}
