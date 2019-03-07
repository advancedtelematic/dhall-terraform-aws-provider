
let ParameterOptional =
  { default_value: Optional Text
  , description: Optional Text
  , name: Optional Text
  , type: Optional Text
  }

let ParameterRequired = {}
let Parameter = ParameterOptional //\\ ParameterRequired

let PermissionsOptional = {}

let PermissionsRequired =
  { account_ids: Text
  , type: Text
  }
let Permissions = PermissionsOptional //\\ PermissionsRequired

let AwsSsmDocumentOptional =
  { document_format: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , parameter: Optional (List Parameter)
  , permissions: Optional Permissions
  }

let AwsSsmDocumentRequired =
  { content: Text
  , document_type: Text
  , name: Text
  }
let AwsSsmDocument = AwsSsmDocumentOptional //\\ AwsSsmDocumentRequired

in
{ AwsSsmDocumentOptional = AwsSsmDocumentOptional
, AwsSsmDocumentRequired = AwsSsmDocumentRequired
, AwsSsmDocument = AwsSsmDocument
, Permissions = Permissions
, ParameterOptional = ParameterOptional
, ParameterRequired = ParameterRequired
, Parameter = Parameter
}
