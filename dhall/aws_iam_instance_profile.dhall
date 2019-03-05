
let AwsIamInstanceProfileOptional =
  { arn: Optional Text
  , create_date: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , path: Optional Text
  , role: Optional Text
  , roles: Optional (List Text)
  , unique_id: Optional Text
  }

let AwsIamInstanceProfileRequired = {}
let AwsIamInstanceProfile = AwsIamInstanceProfileOptional //\\ AwsIamInstanceProfileRequired

in
{ AwsIamInstanceProfileOptional = AwsIamInstanceProfileOptional
, AwsIamInstanceProfileRequired = AwsIamInstanceProfileRequired
, AwsIamInstanceProfile = AwsIamInstanceProfile
}
