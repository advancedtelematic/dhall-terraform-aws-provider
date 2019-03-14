
let appversionLifecycle =
  { delete_source_from_s3 = None Bool
  , max_age_in_days = None Natural
  , max_count = None Natural
  }

let awsElasticBeanstalkApplication =
  { description = None Text
  , appversion_lifecycle = None (../dhall/aws_elastic_beanstalk_application.dhall).AppversionLifecycle
  }

in
{ awsElasticBeanstalkApplication = awsElasticBeanstalkApplication
, appversionLifecycle = appversionLifecycle
}
