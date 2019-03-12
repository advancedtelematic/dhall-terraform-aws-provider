
let AwsDxConnectionAssociationOptional = {}

let AwsDxConnectionAssociationRequired =
  { connection_id : Text
  , lag_id : Text
  }
let AwsDxConnectionAssociation = AwsDxConnectionAssociationOptional //\\ AwsDxConnectionAssociationRequired

in
{ AwsDxConnectionAssociation = AwsDxConnectionAssociation
}
