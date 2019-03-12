
let AwsRedshiftEventSubscriptionOptional =
  { enabled : Optional Bool
  , event_categories : Optional (List Text)
  , severity : Optional Text
  , source_ids : Optional (List Text)
  , source_type : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsRedshiftEventSubscriptionRequired =
  { name : Text
  , sns_topic_arn : Text
  }
let AwsRedshiftEventSubscription = AwsRedshiftEventSubscriptionOptional //\\ AwsRedshiftEventSubscriptionRequired

in
{ AwsRedshiftEventSubscriptionOptional = AwsRedshiftEventSubscriptionOptional
, AwsRedshiftEventSubscriptionRequired = AwsRedshiftEventSubscriptionRequired
, AwsRedshiftEventSubscription = AwsRedshiftEventSubscription
}
