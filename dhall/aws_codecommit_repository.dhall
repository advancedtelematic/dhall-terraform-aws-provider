
let AwsCodecommitRepositoryOptional =
  { default_branch: Optional Text
  , description: Optional Text
  }

let AwsCodecommitRepositoryRequired =
  { repository_name: Text }
let AwsCodecommitRepository = AwsCodecommitRepositoryOptional //\\ AwsCodecommitRepositoryRequired

in
{ AwsCodecommitRepositoryOptional = AwsCodecommitRepositoryOptional
, AwsCodecommitRepositoryRequired = AwsCodecommitRepositoryRequired
, AwsCodecommitRepository = AwsCodecommitRepository
}
