
let awsRedshiftEventSubscription =
  { enabled = None Bool
  , event_categories = None (List Text)
  , severity = None Text
  , source_ids = None (List Text)
  , source_type = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsRedshiftEventSubscription = awsRedshiftEventSubscription
}
