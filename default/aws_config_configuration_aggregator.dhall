
let accountAggregationSource =
  { all_regions = None Bool
  , regions = None (List Text)
  }

let organizationAggregationSource =
  { all_regions = None Bool
  , regions = None (List Text)
  }

let awsConfigConfigurationAggregator =
  { account_aggregation_source = None (../dhall/aws_config_configuration_aggregator.dhall).AccountAggregationSource
  , organization_aggregation_source = None (../dhall/aws_config_configuration_aggregator.dhall).OrganizationAggregationSource
  }

in
{ awsConfigConfigurationAggregator = awsConfigConfigurationAggregator
, organizationAggregationSource = organizationAggregationSource
, accountAggregationSource = accountAggregationSource
}
