
let AwsNeptuneEventSubscriptionOptional =
  { enabled: Optional Bool
  , event_categories: Optional (List Text)
  , name: Optional Text
  , name_prefix: Optional Text
  , source_ids: Optional (List Text)
  , source_type: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsNeptuneEventSubscriptionRequired =
  { sns_topic_arn: Text }
let AwsNeptuneEventSubscription = AwsNeptuneEventSubscriptionOptional //\\ AwsNeptuneEventSubscriptionRequired

in
{ AwsNeptuneEventSubscriptionOptional = AwsNeptuneEventSubscriptionOptional
, AwsNeptuneEventSubscriptionRequired = AwsNeptuneEventSubscriptionRequired
, AwsNeptuneEventSubscription = AwsNeptuneEventSubscription
}
