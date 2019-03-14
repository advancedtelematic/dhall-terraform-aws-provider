
let awsDbEventSubscription =
  { enabled = None Bool
  , event_categories = None (List Text)
  , name = None Text
  , name_prefix = None Text
  , source_ids = None (List Text)
  , source_type = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsDbEventSubscription = awsDbEventSubscription
}
