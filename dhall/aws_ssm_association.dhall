
let OutputLocationOptional =
  { s3_key_prefix : Optional Text }

let OutputLocationRequired =
  { s3_bucket_name : Text }
let OutputLocation = OutputLocationOptional //\\ OutputLocationRequired

let TargetsOptional = {}

let TargetsRequired =
  { key : Text
  , values : (List Text)
  }
let Targets = TargetsOptional //\\ TargetsRequired

let AwsSsmAssociationOptional =
  { association_name : Optional Text
  , document_version : Optional Text
  , instance_id : Optional Text
  , parameters : Optional (List { mapKey : Text, mapValue : Text })
  , schedule_expression : Optional Text
  , output_location : Optional OutputLocation
  , targets : Optional (List Targets)
  }

let AwsSsmAssociationRequired =
  { name : Text }
let AwsSsmAssociation = AwsSsmAssociationOptional //\\ AwsSsmAssociationRequired

in
{ AwsSsmAssociationOptional = AwsSsmAssociationOptional
, AwsSsmAssociationRequired = AwsSsmAssociationRequired
, AwsSsmAssociation = AwsSsmAssociation
, Targets = Targets
, OutputLocationOptional = OutputLocationOptional
, OutputLocationRequired = OutputLocationRequired
, OutputLocation = OutputLocation
}
