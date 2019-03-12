
let AwsSecurityhubProductSubscriptionOptional = {}

let AwsSecurityhubProductSubscriptionRequired =
  { product_arn : Text }
let AwsSecurityhubProductSubscription = AwsSecurityhubProductSubscriptionOptional //\\ AwsSecurityhubProductSubscriptionRequired

in
{ AwsSecurityhubProductSubscription = AwsSecurityhubProductSubscription
}
