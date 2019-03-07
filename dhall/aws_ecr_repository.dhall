
let AwsEcrRepositoryOptional =
  { tags: Optional (List { mapKey : Text, mapValue : Text }) }

let AwsEcrRepositoryRequired =
  { name: Text }
let AwsEcrRepository = AwsEcrRepositoryOptional //\\ AwsEcrRepositoryRequired

in
{ AwsEcrRepositoryOptional = AwsEcrRepositoryOptional
, AwsEcrRepositoryRequired = AwsEcrRepositoryRequired
, AwsEcrRepository = AwsEcrRepository
}
