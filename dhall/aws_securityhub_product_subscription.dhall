
let AwsSecurityhubProductSubscriptionOptional =
  { arn: Optional Text }

let AwsSecurityhubProductSubscriptionRequired =
  { product_arn: Text }
let AwsSecurityhubProductSubscription = AwsSecurityhubProductSubscriptionOptional //\\ AwsSecurityhubProductSubscriptionRequired

in
{ AwsSecurityhubProductSubscriptionOptional = AwsSecurityhubProductSubscriptionOptional
, AwsSecurityhubProductSubscriptionRequired = AwsSecurityhubProductSubscriptionRequired
, AwsSecurityhubProductSubscription = AwsSecurityhubProductSubscription
}
