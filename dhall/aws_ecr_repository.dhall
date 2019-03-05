
let AwsEcrRepositoryOptional =
  { arn: Optional Text
  , registry_id: Optional Text
  , repository_url: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsEcrRepositoryRequired =
  { name: Text }
let AwsEcrRepository = AwsEcrRepositoryOptional //\\ AwsEcrRepositoryRequired

in
{ AwsEcrRepositoryOptional = AwsEcrRepositoryOptional
, AwsEcrRepositoryRequired = AwsEcrRepositoryRequired
, AwsEcrRepository = AwsEcrRepository
}
