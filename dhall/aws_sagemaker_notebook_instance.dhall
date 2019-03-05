
let AwsSagemakerNotebookInstanceOptional =
  { arn: Optional Text
  , kms_key_id: Optional Text
  , security_groups: Optional (List Text)
  , subnet_id: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsSagemakerNotebookInstanceRequired =
  { instance_type: Text
  , name: Text
  , role_arn: Text
  }
let AwsSagemakerNotebookInstance = AwsSagemakerNotebookInstanceOptional //\\ AwsSagemakerNotebookInstanceRequired

in
{ AwsSagemakerNotebookInstanceOptional = AwsSagemakerNotebookInstanceOptional
, AwsSagemakerNotebookInstanceRequired = AwsSagemakerNotebookInstanceRequired
, AwsSagemakerNotebookInstance = AwsSagemakerNotebookInstance
}
