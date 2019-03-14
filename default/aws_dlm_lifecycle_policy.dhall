
let createRule =
  { interval_unit = None Text
  , times = None (List Text)
  }

let retainRule = {}

let schedule =
  { copy_tags = None Bool
  , tags_to_add = None (List { mapKey : Text, mapValue : Text })
  }

let policyDetails = {}

let awsDlmLifecyclePolicy =
  { state = None Text }

in
{ awsDlmLifecyclePolicy = awsDlmLifecyclePolicy
, schedule = schedule
, createRule = createRule
}
