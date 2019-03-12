
let AwsDxConnectionOptional =
  { tags : Optional (List { mapKey : Text, mapValue : Text }) }

let AwsDxConnectionRequired =
  { bandwidth : Text
  , location : Text
  , name : Text
  }
let AwsDxConnection = AwsDxConnectionOptional //\\ AwsDxConnectionRequired

in
{ AwsDxConnectionOptional = AwsDxConnectionOptional
, AwsDxConnectionRequired = AwsDxConnectionRequired
, AwsDxConnection = AwsDxConnection
}
