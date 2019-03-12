
let AwsIamAccessKeyOptional =
  { pgp_key : Optional Text }

let AwsIamAccessKeyRequired =
  { user : Text }
let AwsIamAccessKey = AwsIamAccessKeyOptional //\\ AwsIamAccessKeyRequired

in
{ AwsIamAccessKeyOptional = AwsIamAccessKeyOptional
, AwsIamAccessKeyRequired = AwsIamAccessKeyRequired
, AwsIamAccessKey = AwsIamAccessKey
}
