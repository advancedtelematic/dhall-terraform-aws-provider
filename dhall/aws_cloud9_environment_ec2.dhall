
let AwsCloud9EnvironmentEc2Optional =
  { arn: Optional Text
  , automatic_stop_time_minutes: Optional Natural
  , description: Optional Text
  , owner_arn: Optional Text
  , subnet_id: Optional Text
  , type: Optional Text
  }

let AwsCloud9EnvironmentEc2Required =
  { instance_type: Text
  , name: Text
  }
let AwsCloud9EnvironmentEc2 = AwsCloud9EnvironmentEc2Optional //\\ AwsCloud9EnvironmentEc2Required

in
{ AwsCloud9EnvironmentEc2Optional = AwsCloud9EnvironmentEc2Optional
, AwsCloud9EnvironmentEc2Required = AwsCloud9EnvironmentEc2Required
, AwsCloud9EnvironmentEc2 = AwsCloud9EnvironmentEc2
}
