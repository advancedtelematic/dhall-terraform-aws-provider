
let TriggerOptional =
  { branches: Optional (List Text)
  , custom_data: Optional Text
  }

let TriggerRequired =
  { destination_arn: Text
  , events: (List Text)
  , name: Text
  }
let Trigger = TriggerOptional //\\ TriggerRequired

let AwsCodecommitTriggerOptional =
  { configuration_id: Optional Text }

let AwsCodecommitTriggerRequired =
  { repository_name: Text
  , trigger: List List Trigger
  }
let AwsCodecommitTrigger = AwsCodecommitTriggerOptional //\\ AwsCodecommitTriggerRequired

in
{ AwsCodecommitTriggerOptional = AwsCodecommitTriggerOptional
, AwsCodecommitTriggerRequired = AwsCodecommitTriggerRequired
, AwsCodecommitTrigger = AwsCodecommitTrigger
, TriggerOptional = TriggerOptional
, TriggerRequired = TriggerRequired
, Trigger = Trigger
}
