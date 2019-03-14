
let awsSagemakerNotebookInstance =
  { kms_key_id = None Text
  , security_groups = None (List Text)
  , subnet_id = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsSagemakerNotebookInstance = awsSagemakerNotebookInstance
}
