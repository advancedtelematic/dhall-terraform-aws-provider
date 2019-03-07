
let AwsSesDomainDkimOptional = {}

let AwsSesDomainDkimRequired =
  { domain: Text }
let AwsSesDomainDkim = AwsSesDomainDkimOptional //\\ AwsSesDomainDkimRequired

in
{ AwsSesDomainDkim = AwsSesDomainDkim
}
