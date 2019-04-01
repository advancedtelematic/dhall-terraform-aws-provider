
let TriggerOptional =
  { branches : Optional (List Text)
  , custom_data : Optional Text
  }

let TriggerRequired =
  { destination_arn : Text
  , events : (List Text)
  , name : Text
  }
let Trigger = TriggerOptional //\\ TriggerRequired

in
{ TriggerOptional = TriggerOptional
, TriggerRequired = TriggerRequired
, Trigger = Trigger
}
