
let AwsElasticsearchDomainPolicyOptional = {}

let AwsElasticsearchDomainPolicyRequired =
  { access_policies: Text
  , domain_name: Text
  }
let AwsElasticsearchDomainPolicy = AwsElasticsearchDomainPolicyOptional //\\ AwsElasticsearchDomainPolicyRequired

in
{ AwsElasticsearchDomainPolicy = AwsElasticsearchDomainPolicy
}
