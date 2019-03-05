
let AwsSpotDatafeedSubscriptionOptional =
  { prefix: Optional Text }

let AwsSpotDatafeedSubscriptionRequired =
  { bucket: Text }
let AwsSpotDatafeedSubscription = AwsSpotDatafeedSubscriptionOptional //\\ AwsSpotDatafeedSubscriptionRequired

in
{ AwsSpotDatafeedSubscriptionOptional = AwsSpotDatafeedSubscriptionOptional
, AwsSpotDatafeedSubscriptionRequired = AwsSpotDatafeedSubscriptionRequired
, AwsSpotDatafeedSubscription = AwsSpotDatafeedSubscription
}
