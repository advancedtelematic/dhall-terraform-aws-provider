
let AwsCodecommitRepositoryOptional =
  { arn: Optional Text
  , clone_url_http: Optional Text
  , clone_url_ssh: Optional Text
  , default_branch: Optional Text
  , description: Optional Text
  , repository_id: Optional Text
  }

let AwsCodecommitRepositoryRequired =
  { repository_name: Text }
let AwsCodecommitRepository = AwsCodecommitRepositoryOptional //\\ AwsCodecommitRepositoryRequired

in
{ AwsCodecommitRepositoryOptional = AwsCodecommitRepositoryOptional
, AwsCodecommitRepositoryRequired = AwsCodecommitRepositoryRequired
, AwsCodecommitRepository = AwsCodecommitRepository
}
