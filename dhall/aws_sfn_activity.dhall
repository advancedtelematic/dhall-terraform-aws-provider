
let AwsSfnActivityOptional =
  { tags: Optional (List { mapKey : Text, mapValue : Text }) }

let AwsSfnActivityRequired =
  { name: Text }
let AwsSfnActivity = AwsSfnActivityOptional //\\ AwsSfnActivityRequired

in
{ AwsSfnActivityOptional = AwsSfnActivityOptional
, AwsSfnActivityRequired = AwsSfnActivityRequired
, AwsSfnActivity = AwsSfnActivity
}
