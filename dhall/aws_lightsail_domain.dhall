
let AwsLightsailDomainOptional = {}

let AwsLightsailDomainRequired =
  { domain_name: Text }
let AwsLightsailDomain = AwsLightsailDomainOptional //\\ AwsLightsailDomainRequired

in
{ AwsLightsailDomain = AwsLightsailDomain
}
