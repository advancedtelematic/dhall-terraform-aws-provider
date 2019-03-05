
let AwsSwfDomainOptional =
  { description: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  }

let AwsSwfDomainRequired =
  { workflow_execution_retention_period_in_days: Text }
let AwsSwfDomain = AwsSwfDomainOptional //\\ AwsSwfDomainRequired

in
{ AwsSwfDomainOptional = AwsSwfDomainOptional
, AwsSwfDomainRequired = AwsSwfDomainRequired
, AwsSwfDomain = AwsSwfDomain
}
