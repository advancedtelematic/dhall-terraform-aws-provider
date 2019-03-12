
let AppversionLifecycleOptional =
  { delete_source_from_s3 : Optional Bool
  , max_age_in_days : Optional Natural
  , max_count : Optional Natural
  }

let AppversionLifecycleRequired =
  { service_role : Text }
let AppversionLifecycle = AppversionLifecycleOptional //\\ AppversionLifecycleRequired

let AwsElasticBeanstalkApplicationOptional =
  { description : Optional Text
  , appversion_lifecycle : Optional AppversionLifecycle
  }

let AwsElasticBeanstalkApplicationRequired =
  { name : Text }
let AwsElasticBeanstalkApplication = AwsElasticBeanstalkApplicationOptional //\\ AwsElasticBeanstalkApplicationRequired

in
{ AwsElasticBeanstalkApplicationOptional = AwsElasticBeanstalkApplicationOptional
, AwsElasticBeanstalkApplicationRequired = AwsElasticBeanstalkApplicationRequired
, AwsElasticBeanstalkApplication = AwsElasticBeanstalkApplication
, AppversionLifecycleOptional = AppversionLifecycleOptional
, AppversionLifecycleRequired = AppversionLifecycleRequired
, AppversionLifecycle = AppversionLifecycle
}
