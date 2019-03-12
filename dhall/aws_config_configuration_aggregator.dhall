
let AccountAggregationSourceOptional =
  { all_regions : Optional Bool
  , regions : Optional (List Text)
  }

let AccountAggregationSourceRequired =
  { account_ids : (List Text) }
let AccountAggregationSource = AccountAggregationSourceOptional //\\ AccountAggregationSourceRequired

let OrganizationAggregationSourceOptional =
  { all_regions : Optional Bool
  , regions : Optional (List Text)
  }

let OrganizationAggregationSourceRequired =
  { role_arn : Text }
let OrganizationAggregationSource = OrganizationAggregationSourceOptional //\\ OrganizationAggregationSourceRequired

let AwsConfigConfigurationAggregatorOptional =
  { account_aggregation_source : Optional AccountAggregationSource
  , organization_aggregation_source : Optional OrganizationAggregationSource
  }

let AwsConfigConfigurationAggregatorRequired =
  { name : Text }
let AwsConfigConfigurationAggregator = AwsConfigConfigurationAggregatorOptional //\\ AwsConfigConfigurationAggregatorRequired

in
{ AwsConfigConfigurationAggregatorOptional = AwsConfigConfigurationAggregatorOptional
, AwsConfigConfigurationAggregatorRequired = AwsConfigConfigurationAggregatorRequired
, AwsConfigConfigurationAggregator = AwsConfigConfigurationAggregator
, OrganizationAggregationSourceOptional = OrganizationAggregationSourceOptional
, OrganizationAggregationSourceRequired = OrganizationAggregationSourceRequired
, OrganizationAggregationSource = OrganizationAggregationSource
, AccountAggregationSourceOptional = AccountAggregationSourceOptional
, AccountAggregationSourceRequired = AccountAggregationSourceRequired
, AccountAggregationSource = AccountAggregationSource
}
