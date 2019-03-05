
let AwsSesDomainIdentityOptional =
  { arn: Optional Text
  , verification_token: Optional Text
  }

let AwsSesDomainIdentityRequired =
  { domain: Text }
let AwsSesDomainIdentity = AwsSesDomainIdentityOptional //\\ AwsSesDomainIdentityRequired

in
{ AwsSesDomainIdentityOptional = AwsSesDomainIdentityOptional
, AwsSesDomainIdentityRequired = AwsSesDomainIdentityRequired
, AwsSesDomainIdentity = AwsSesDomainIdentity
}
