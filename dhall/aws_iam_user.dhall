
let AwsIamUserOptional =
  { force_destroy: Optional Bool
  , path: Optional Text
  , permissions_boundary: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsIamUserRequired =
  { name: Text }
let AwsIamUser = AwsIamUserOptional //\\ AwsIamUserRequired

in
{ AwsIamUserOptional = AwsIamUserOptional
, AwsIamUserRequired = AwsIamUserRequired
, AwsIamUser = AwsIamUser
}
