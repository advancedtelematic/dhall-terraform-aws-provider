
let AwsDxLagOptional =
  { force_destroy : Optional Bool
  , number_of_connections : Optional Natural
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDxLagRequired =
  { connections_bandwidth : Text
  , location : Text
  , name : Text
  }
let AwsDxLag = AwsDxLagOptional //\\ AwsDxLagRequired

in
{ AwsDxLagOptional = AwsDxLagOptional
, AwsDxLagRequired = AwsDxLagRequired
, AwsDxLag = AwsDxLag
}
