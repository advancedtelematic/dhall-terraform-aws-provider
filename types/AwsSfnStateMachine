
let AwsSfnStateMachineOptional =
  { tags : Optional (List { mapKey : Text, mapValue : Text }) }

let AwsSfnStateMachineRequired =
  { definition : Text
  , name : Text
  , role_arn : Text
  }
let AwsSfnStateMachine = AwsSfnStateMachineOptional //\\ AwsSfnStateMachineRequired

in
{ AwsSfnStateMachineOptional = AwsSfnStateMachineOptional
, AwsSfnStateMachineRequired = AwsSfnStateMachineRequired
, AwsSfnStateMachine = AwsSfnStateMachine
}
