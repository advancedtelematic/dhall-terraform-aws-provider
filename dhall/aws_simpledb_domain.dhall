
let AwsSimpledbDomainOptional = {}

let AwsSimpledbDomainRequired =
  { name: Text }
let AwsSimpledbDomain = AwsSimpledbDomainOptional //\\ AwsSimpledbDomainRequired

in
{ AwsSimpledbDomain = AwsSimpledbDomain
}
