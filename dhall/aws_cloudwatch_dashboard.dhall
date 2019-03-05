
let AwsCloudwatchDashboardOptional =
  { dashboard_arn: Optional Text }

let AwsCloudwatchDashboardRequired =
  { dashboard_body: Text
  , dashboard_name: Text
  }
let AwsCloudwatchDashboard = AwsCloudwatchDashboardOptional //\\ AwsCloudwatchDashboardRequired

in
{ AwsCloudwatchDashboardOptional = AwsCloudwatchDashboardOptional
, AwsCloudwatchDashboardRequired = AwsCloudwatchDashboardRequired
, AwsCloudwatchDashboard = AwsCloudwatchDashboard
}
