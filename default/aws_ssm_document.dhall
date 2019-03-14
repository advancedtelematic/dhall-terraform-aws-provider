
let parameter =
  { default_value = None Text
  , description = None Text
  , name = None Text
  , type = None Text
  }

let permissions = {}

let awsSsmDocument =
  { document_format = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , parameter = None (List (../dhall/aws_ssm_document.dhall).Parameter)
  , permissions = None (../dhall/aws_ssm_document.dhall).Permissions
  }

in
{ awsSsmDocument = awsSsmDocument
, parameter = parameter
}
