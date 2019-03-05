
let ActionsOptional =
  { arguments: Optional (List { mapKey : Text, mapValue : Text })
  , timeout: Optional Natural
  }

let ActionsRequired =
  { job_name: Text }
let Actions = ActionsOptional //\\ ActionsRequired

let ConditionsOptional =
  { logical_operator: Optional Text }

let ConditionsRequired =
  { job_name: Text
  , state: Text
  }
let Conditions = ConditionsOptional //\\ ConditionsRequired

let PredicateOptional =
  { logical: Optional Text }

let PredicateRequired =
  { conditions: List List Conditions }
let Predicate = PredicateOptional //\\ PredicateRequired

let AwsGlueTriggerOptional =
  { description: Optional Text
  , enabled: Optional Bool
  , schedule: Optional Text
  , predicate: Optional Predicate
  }

let AwsGlueTriggerRequired =
  { name: Text
  , type: Text
  , actions: List List Actions
  }
let AwsGlueTrigger = AwsGlueTriggerOptional //\\ AwsGlueTriggerRequired

in
{ AwsGlueTriggerOptional = AwsGlueTriggerOptional
, AwsGlueTriggerRequired = AwsGlueTriggerRequired
, AwsGlueTrigger = AwsGlueTrigger
, PredicateOptional = PredicateOptional
, PredicateRequired = PredicateRequired
, Predicate = Predicate
, ConditionsOptional = ConditionsOptional
, ConditionsRequired = ConditionsRequired
, Conditions = Conditions
, ActionsOptional = ActionsOptional
, ActionsRequired = ActionsRequired
, Actions = Actions
}
