
let AwsSesDomainIdentityVerificationOptional =
  { arn: Optional Text }

let AwsSesDomainIdentityVerificationRequired =
  { domain: Text }
let AwsSesDomainIdentityVerification = AwsSesDomainIdentityVerificationOptional //\\ AwsSesDomainIdentityVerificationRequired

in
{ AwsSesDomainIdentityVerificationOptional = AwsSesDomainIdentityVerificationOptional
, AwsSesDomainIdentityVerificationRequired = AwsSesDomainIdentityVerificationRequired
, AwsSesDomainIdentityVerification = AwsSesDomainIdentityVerification
}
