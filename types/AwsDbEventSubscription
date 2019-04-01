
let AwsDbEventSubscriptionOptional =
  { enabled : Optional Bool
  , event_categories : Optional (List Text)
  , name : Optional Text
  , name_prefix : Optional Text
  , source_ids : Optional (List Text)
  , source_type : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDbEventSubscriptionRequired =
  { sns_topic : Text }
let AwsDbEventSubscription = AwsDbEventSubscriptionOptional //\\ AwsDbEventSubscriptionRequired

in
{ AwsDbEventSubscriptionOptional = AwsDbEventSubscriptionOptional
, AwsDbEventSubscriptionRequired = AwsDbEventSubscriptionRequired
, AwsDbEventSubscription = AwsDbEventSubscription
}
