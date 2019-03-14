
let awsTransferUser =
  { home_directory = None Text
  , policy = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  }

in
{ awsTransferUser = awsTransferUser
}
