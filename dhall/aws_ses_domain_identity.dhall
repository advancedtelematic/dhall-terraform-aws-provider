
let AwsSesDomainIdentityOptional = {}

let AwsSesDomainIdentityRequired =
  { domain : Text }
let AwsSesDomainIdentity = AwsSesDomainIdentityOptional //\\ AwsSesDomainIdentityRequired

in
{ AwsSesDomainIdentity = AwsSesDomainIdentity
}
