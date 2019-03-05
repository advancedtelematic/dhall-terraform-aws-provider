
let AwsSesDomainDkimOptional =
  { dkim_tokens: Optional (List Text) }

let AwsSesDomainDkimRequired =
  { domain: Text }
let AwsSesDomainDkim = AwsSesDomainDkimOptional //\\ AwsSesDomainDkimRequired

in
{ AwsSesDomainDkimOptional = AwsSesDomainDkimOptional
, AwsSesDomainDkimRequired = AwsSesDomainDkimRequired
, AwsSesDomainDkim = AwsSesDomainDkim
}
