
let AwsLightsailDomainOptional =
  { arn: Optional Text }

let AwsLightsailDomainRequired =
  { domain_name: Text }
let AwsLightsailDomain = AwsLightsailDomainOptional //\\ AwsLightsailDomainRequired

in
{ AwsLightsailDomainOptional = AwsLightsailDomainOptional
, AwsLightsailDomainRequired = AwsLightsailDomainRequired
, AwsLightsailDomain = AwsLightsailDomain
}
