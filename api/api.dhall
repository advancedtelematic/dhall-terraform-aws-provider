let keyValue = https://raw.githubusercontent.com/dhall-lang/dhall-lang/master/Prelude/JSON/keyValue

let resource =
  \(resource : Text) -> \(type : Type) -> \(name : Text) -> \(value : type) ->
  { mapKey = resource
  , mapValue =
    [ { mapKey = name, mapValue = value } ]
  }

in { resource = resource }
