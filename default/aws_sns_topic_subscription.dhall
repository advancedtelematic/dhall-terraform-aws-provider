
let awsSnsTopicSubscription =
  { confirmation_timeout_in_minutes = None Natural
  , delivery_policy = None Text
  , endpoint_auto_confirms = None Bool
  , filter_policy = None Text
  , raw_message_delivery = None Bool
  }

in
{ awsSnsTopicSubscription = awsSnsTopicSubscription
}
