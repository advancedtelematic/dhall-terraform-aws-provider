
let AwsElasticBeanstalkApplicationVersionOptional =
  { description: Optional Text
  , force_delete: Optional Bool
  }

let AwsElasticBeanstalkApplicationVersionRequired =
  { application: Text
  , bucket: Text
  , key: Text
  , name: Text
  }
let AwsElasticBeanstalkApplicationVersion = AwsElasticBeanstalkApplicationVersionOptional //\\ AwsElasticBeanstalkApplicationVersionRequired

in
{ AwsElasticBeanstalkApplicationVersionOptional = AwsElasticBeanstalkApplicationVersionOptional
, AwsElasticBeanstalkApplicationVersionRequired = AwsElasticBeanstalkApplicationVersionRequired
, AwsElasticBeanstalkApplicationVersion = AwsElasticBeanstalkApplicationVersion
}
