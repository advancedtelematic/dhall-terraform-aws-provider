
let actions =
  { arguments = None (List { mapKey : Text, mapValue : Text })
  , timeout = None Natural
  }

let conditions =
  { logical_operator = None Text }

let predicate =
  { logical = None Text }

let awsGlueTrigger =
  { description = None Text
  , enabled = None Bool
  , schedule = None Text
  , predicate = None (../dhall/aws_glue_trigger.dhall).Predicate
  }

in
{ awsGlueTrigger = awsGlueTrigger
, predicate = predicate
, conditions = conditions
, actions = actions
}
