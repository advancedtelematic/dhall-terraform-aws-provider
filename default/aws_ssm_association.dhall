
let outputLocation =
  { s3_key_prefix = None Text }

let targets = {}

let awsSsmAssociation =
  { association_name = None Text
  , document_version = None Text
  , instance_id = None Text
  , parameters = None (List { mapKey : Text, mapValue : Text })
  , schedule_expression = None Text
  , output_location = None (../dhall/aws_ssm_association.dhall).OutputLocation
  , targets = None (List (../dhall/aws_ssm_association.dhall).Targets)
  }

in
{ awsSsmAssociation = awsSsmAssociation
, outputLocation = outputLocation
}
