
let AwsSecurityhubStandardsSubscriptionOptional = {}

let AwsSecurityhubStandardsSubscriptionRequired =
  { standards_arn : Text }
let AwsSecurityhubStandardsSubscription = AwsSecurityhubStandardsSubscriptionOptional //\\ AwsSecurityhubStandardsSubscriptionRequired

in
{ AwsSecurityhubStandardsSubscription = AwsSecurityhubStandardsSubscription
}
