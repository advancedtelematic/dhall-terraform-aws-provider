
let AwsIamGroupOptional =
  { arn: Optional Text
  , path: Optional Text
  , unique_id: Optional Text
  }

let AwsIamGroupRequired =
  { name: Text }
let AwsIamGroup = AwsIamGroupOptional //\\ AwsIamGroupRequired

in
{ AwsIamGroupOptional = AwsIamGroupOptional
, AwsIamGroupRequired = AwsIamGroupRequired
, AwsIamGroup = AwsIamGroup
}
