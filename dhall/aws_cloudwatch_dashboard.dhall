
let AwsCloudwatchDashboardOptional = {}

let AwsCloudwatchDashboardRequired =
  { dashboard_body : Text
  , dashboard_name : Text
  }
let AwsCloudwatchDashboard = AwsCloudwatchDashboardOptional //\\ AwsCloudwatchDashboardRequired

in
{ AwsCloudwatchDashboard = AwsCloudwatchDashboard
}
