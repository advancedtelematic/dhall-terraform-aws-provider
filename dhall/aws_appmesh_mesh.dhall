
let AwsAppmeshMeshOptional =
  { arn: Optional Text
  , created_date: Optional Text
  , last_updated_date: Optional Text
  }

let AwsAppmeshMeshRequired =
  { name: Text }
let AwsAppmeshMesh = AwsAppmeshMeshOptional //\\ AwsAppmeshMeshRequired

in
{ AwsAppmeshMeshOptional = AwsAppmeshMeshOptional
, AwsAppmeshMeshRequired = AwsAppmeshMeshRequired
, AwsAppmeshMesh = AwsAppmeshMesh
}
