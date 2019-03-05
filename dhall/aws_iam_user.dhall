
let AwsIamUserOptional =
  { arn: Optional Text
  , force_destroy: Optional Bool
  , path: Optional Text
  , permissions_boundary: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , unique_id: Optional Text
  }

let AwsIamUserRequired =
  { name: Text }
let AwsIamUser = AwsIamUserOptional //\\ AwsIamUserRequired

in
{ AwsIamUserOptional = AwsIamUserOptional
, AwsIamUserRequired = AwsIamUserRequired
, AwsIamUser = AwsIamUser
}
